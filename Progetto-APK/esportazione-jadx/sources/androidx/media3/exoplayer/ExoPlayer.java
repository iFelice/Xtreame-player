package androidx.media3.exoplayer;

import androidx.media3.exoplayer.image.ImageOutput;
import p094m0.Y;

/* JADX INFO: loaded from: classes.dex */
public interface ExoPlayer extends Y {
    boolean isScrubbingModeEnabled();

    void setImageOutput(ImageOutput imageOutput);

    void setScrubbingModeEnabled(boolean z7);
}
