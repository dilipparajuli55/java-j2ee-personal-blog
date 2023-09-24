/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tech.blog.helper;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

/**
 *
 * @author dilip
 */
public class Helper {
    // This function will be called to delete user's existing profile pic
    public static boolean deleteFile(String path){
        boolean status = false;
        try{
            // Get the file from the db and delete it - returns true if success
            File file = new File(path);
            status = file.delete();
        }catch (Exception e){
            e.printStackTrace();
        }
        return status;
    }
    // Call this function to save the new profile pic to the db
    public static boolean saveFile(InputStream is, String path){
        boolean status = false;
        try {
            // Read the file
            byte b[] = new byte[is.available()];
            is.read(b);
            // Write the file
            FileOutputStream fos = new FileOutputStream(path);
            fos.write(b);
            fos.flush();
            fos.close();
            status = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
}
