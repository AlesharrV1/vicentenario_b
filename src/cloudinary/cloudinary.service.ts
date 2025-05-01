import { Injectable } from "@nestjs/common";
import { v2 as cloudinary } from "cloudinary";
import { CloudinaryResponse } from "./cloudinary-response";
const streaifier = require('streamifier');

@Injectable()
export class CloudinaryService {

    uploadFile(file: Express.Multer.File): Promise<CloudinaryResponse> {
        
        return new Promise<CloudinaryResponse>((resolve, reject) => {
            const uploadStream = cloudinary.uploader.upload_stream(
                (error, result) => {
                    if (error) return reject(error);
                    if (!result) return reject(new Error("Upload result is undefined"));
                    resolve(result);
                },
            );
            streaifier.createReadStream(file.buffer).pipe(uploadStream);
        })
    }

}