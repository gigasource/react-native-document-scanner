package com.documentscanner.helpers;

import org.opencv.core.Mat;

/**
 * Created by allgood on 06/03/16.
 */
public class PreviewFrame {

    private final boolean previewOnly;
    private Mat frame;

    public PreviewFrame(Mat frame , boolean previewOnly) {
        this.frame = frame;
        this.previewOnly = previewOnly;
    }

    public Mat getFrame() {
        return frame;
    }

    public void setFrame(Mat frame) {
        this.frame = frame;
    }

    public boolean isPreviewOnly() {
        return previewOnly;
    }
}
