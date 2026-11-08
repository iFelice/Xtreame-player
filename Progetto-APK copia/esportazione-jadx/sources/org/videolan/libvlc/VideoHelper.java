package org.videolan.libvlc;

import android.app.Activity;
import android.os.Handler;
import android.util.Log;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import com.google.protobuf.U2;
import okhttp3.HttpUrl;
import org.videolan.libvlc.interfaces.IMedia;
import org.videolan.libvlc.interfaces.IVLCVout;
import org.videolan.libvlc.util.AndroidUtil;
import org.videolan.libvlc.util.DisplayManager;
import org.videolan.libvlc.util.VLCVideoLayout;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes2.dex */
class VideoHelper implements IVLCVout.OnNewVideoLayoutListener {
    private static final String TAG = "LibVLC/VideoHelper";
    private DisplayManager mDisplayManager;
    private MediaPlayer mMediaPlayer;
    private FrameLayout mVideoSurfaceFrame;
    private MediaPlayer.ScaleType mCurrentScaleType = MediaPlayer.ScaleType.SURFACE_BEST_FIT;
    private int mVideoHeight = 0;
    private int mVideoWidth = 0;
    private int mVideoVisibleHeight = 0;
    private int mVideoVisibleWidth = 0;
    private int mVideoSarNum = 0;
    private int mVideoSarDen = 0;
    private SurfaceView mVideoSurface = null;
    private SurfaceView mSubtitlesSurface = null;
    private TextureView mVideoTexture = null;
    private final Handler mHandler = new Handler();
    private View.OnLayoutChangeListener mOnLayoutChangeListener = null;

    /* JADX INFO: renamed from: org.videolan.libvlc.VideoHelper$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$org$videolan$libvlc$MediaPlayer$ScaleType;

        static {
            int[] iArr = new int[MediaPlayer.ScaleType.values().length];
            $SwitchMap$org$videolan$libvlc$MediaPlayer$ScaleType = iArr;
            try {
                iArr[MediaPlayer.ScaleType.SURFACE_BEST_FIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$videolan$libvlc$MediaPlayer$ScaleType[MediaPlayer.ScaleType.SURFACE_FIT_SCREEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$videolan$libvlc$MediaPlayer$ScaleType[MediaPlayer.ScaleType.SURFACE_FILL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$videolan$libvlc$MediaPlayer$ScaleType[MediaPlayer.ScaleType.SURFACE_16_9.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$videolan$libvlc$MediaPlayer$ScaleType[MediaPlayer.ScaleType.SURFACE_16_10.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$videolan$libvlc$MediaPlayer$ScaleType[MediaPlayer.ScaleType.SURFACE_2_1.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$videolan$libvlc$MediaPlayer$ScaleType[MediaPlayer.ScaleType.SURFACE_221_1.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$videolan$libvlc$MediaPlayer$ScaleType[MediaPlayer.ScaleType.SURFACE_235_1.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$videolan$libvlc$MediaPlayer$ScaleType[MediaPlayer.ScaleType.SURFACE_239_1.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$videolan$libvlc$MediaPlayer$ScaleType[MediaPlayer.ScaleType.SURFACE_5_4.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$videolan$libvlc$MediaPlayer$ScaleType[MediaPlayer.ScaleType.SURFACE_4_3.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$videolan$libvlc$MediaPlayer$ScaleType[MediaPlayer.ScaleType.SURFACE_ORIGINAL.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public VideoHelper(MediaPlayer mediaPlayer, VLCVideoLayout vLCVideoLayout, DisplayManager displayManager, boolean z7, boolean z8) {
        init(mediaPlayer, vLCVideoLayout, displayManager, z7, !z8);
    }

    private void changeMediaPlayerLayout(int i8, int i9) {
        if (this.mMediaPlayer.isReleased()) {
        }
        switch (AnonymousClass2.$SwitchMap$org$videolan$libvlc$MediaPlayer$ScaleType[this.mCurrentScaleType.ordinal()]) {
            case 1:
                this.mMediaPlayer.setAspectRatio(null);
                this.mMediaPlayer.setScale(0.0f);
                break;
            case 2:
            case 3:
                IMedia.VideoTrack currentVideoTrack = this.mMediaPlayer.getCurrentVideoTrack();
                if (currentVideoTrack != null) {
                    int i10 = currentVideoTrack.orientation;
                    boolean z7 = i10 == 5 || i10 == 6;
                    if (this.mCurrentScaleType != MediaPlayer.ScaleType.SURFACE_FIT_SCREEN) {
                        this.mMediaPlayer.setScale(0.0f);
                        this.mMediaPlayer.setAspectRatio(!z7 ? U2.j(HttpUrl.FRAGMENT_ENCODE_SET, i8, ":", i9) : U2.j(HttpUrl.FRAGMENT_ENCODE_SET, i9, ":", i8));
                    } else {
                        int i11 = currentVideoTrack.width;
                        int i12 = currentVideoTrack.height;
                        if (z7) {
                            i12 = i11;
                            i11 = i12;
                        }
                        int i13 = currentVideoTrack.sarNum;
                        int i14 = currentVideoTrack.sarDen;
                        if (i13 != i14) {
                            i11 = (i11 * i13) / i14;
                        }
                        float f8 = i11;
                        float f9 = i12;
                        float f10 = i8;
                        float f11 = i9;
                        this.mMediaPlayer.setScale(f10 / f11 >= f8 / f9 ? f10 / f8 : f11 / f9);
                        this.mMediaPlayer.setAspectRatio(null);
                    }
                    break;
                }
                break;
            case 4:
                this.mMediaPlayer.setAspectRatio("16:9");
                this.mMediaPlayer.setScale(0.0f);
                break;
            case 5:
                this.mMediaPlayer.setAspectRatio("16:10");
                this.mMediaPlayer.setScale(0.0f);
                break;
            case 6:
                this.mMediaPlayer.setAspectRatio("2:1");
                this.mMediaPlayer.setScale(0.0f);
                break;
            case 7:
                this.mMediaPlayer.setAspectRatio("2.21:1");
                this.mMediaPlayer.setScale(0.0f);
                break;
            case 8:
                this.mMediaPlayer.setAspectRatio("2.35:1");
                this.mMediaPlayer.setScale(0.0f);
                break;
            case 9:
                this.mMediaPlayer.setAspectRatio("2.39:1");
                this.mMediaPlayer.setScale(0.0f);
                break;
            case 10:
                this.mMediaPlayer.setAspectRatio("5:4");
                this.mMediaPlayer.setScale(0.0f);
                break;
            case 11:
                this.mMediaPlayer.setAspectRatio("4:3");
                this.mMediaPlayer.setScale(0.0f);
                break;
            case 12:
                this.mMediaPlayer.setAspectRatio(null);
                this.mMediaPlayer.setScale(1.0f);
                break;
        }
    }

    private void init(MediaPlayer mediaPlayer, VLCVideoLayout vLCVideoLayout, DisplayManager displayManager, boolean z7, boolean z8) {
        this.mMediaPlayer = mediaPlayer;
        this.mDisplayManager = displayManager;
        if (displayManager != null && !displayManager.isPrimary()) {
            if (this.mDisplayManager.getPresentation() != null) {
                this.mVideoSurfaceFrame = this.mDisplayManager.getPresentation().getSurfaceFrame();
                this.mVideoSurface = this.mDisplayManager.getPresentation().getSurfaceView();
                this.mSubtitlesSurface = this.mDisplayManager.getPresentation().getSubtitlesSurfaceView();
                return;
            }
            return;
        }
        FrameLayout frameLayout = (FrameLayout) vLCVideoLayout.findViewById(R.id.player_surface_frame);
        this.mVideoSurfaceFrame = frameLayout;
        if (!z8) {
            ViewStub viewStub = (ViewStub) frameLayout.findViewById(R.id.texture_stub);
            this.mVideoTexture = (TextureView) (viewStub != null ? viewStub.inflate() : this.mVideoSurfaceFrame.findViewById(R.id.texture_video));
            return;
        }
        ViewStub viewStub2 = (ViewStub) frameLayout.findViewById(R.id.surface_stub);
        this.mVideoSurface = (SurfaceView) (viewStub2 != null ? viewStub2.inflate() : this.mVideoSurfaceFrame.findViewById(R.id.surface_video));
        if (z7) {
            ViewStub viewStub3 = (ViewStub) this.mVideoSurfaceFrame.findViewById(R.id.subtitles_surface_stub);
            SurfaceView surfaceView = (SurfaceView) (viewStub3 != null ? viewStub3.inflate() : this.mVideoSurfaceFrame.findViewById(R.id.surface_subtitles));
            this.mSubtitlesSurface = surfaceView;
            surfaceView.setZOrderMediaOverlay(true);
            this.mSubtitlesSurface.getHolder().setFormat(-3);
        }
    }

    public void attachViews() {
        if (this.mVideoSurface == null && this.mVideoTexture == null) {
            return;
        }
        IVLCVout vLCVout = this.mMediaPlayer.getVLCVout();
        SurfaceView surfaceView = this.mVideoSurface;
        if (surfaceView != null) {
            vLCVout.setVideoView(surfaceView);
            SurfaceView surfaceView2 = this.mSubtitlesSurface;
            if (surfaceView2 != null) {
                vLCVout.setSubtitlesView(surfaceView2);
            }
        } else {
            TextureView textureView = this.mVideoTexture;
            if (textureView == null) {
                return;
            } else {
                vLCVout.setVideoView(textureView);
            }
        }
        vLCVout.attachViews(this);
        if (this.mOnLayoutChangeListener == null) {
            this.mOnLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: org.videolan.libvlc.VideoHelper.1
                private final Runnable runnable = new Runnable() { // from class: org.videolan.libvlc.VideoHelper.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (VideoHelper.this.mVideoSurfaceFrame == null || VideoHelper.this.mOnLayoutChangeListener == null) {
                            return;
                        }
                        VideoHelper.this.updateVideoSurfaces();
                    }
                };

                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15) {
                    if (i8 == i12 && i9 == i13 && i10 == i14 && i11 == i15) {
                        return;
                    }
                    VideoHelper.this.mHandler.removeCallbacks(this.runnable);
                    VideoHelper.this.mHandler.post(this.runnable);
                }
            };
        }
        this.mVideoSurfaceFrame.addOnLayoutChangeListener(this.mOnLayoutChangeListener);
        this.mMediaPlayer.setVideoTrackEnabled(true);
    }

    public void detachViews() {
        FrameLayout frameLayout;
        View.OnLayoutChangeListener onLayoutChangeListener = this.mOnLayoutChangeListener;
        if (onLayoutChangeListener != null && (frameLayout = this.mVideoSurfaceFrame) != null) {
            frameLayout.removeOnLayoutChangeListener(onLayoutChangeListener);
            this.mOnLayoutChangeListener = null;
        }
        this.mMediaPlayer.setVideoTrackEnabled(false);
        this.mMediaPlayer.getVLCVout().detachViews();
    }

    public MediaPlayer.ScaleType getVideoScale() {
        return this.mCurrentScaleType;
    }

    @Override // org.videolan.libvlc.interfaces.IVLCVout.OnNewVideoLayoutListener
    public void onNewVideoLayout(IVLCVout iVLCVout, int i8, int i9, int i10, int i11, int i12, int i13) {
        this.mVideoWidth = i8;
        this.mVideoHeight = i9;
        this.mVideoVisibleWidth = i10;
        this.mVideoVisibleHeight = i11;
        this.mVideoSarNum = i12;
        this.mVideoSarDen = i13;
        updateVideoSurfaces();
    }

    public void release() {
        if (this.mMediaPlayer.getVLCVout().areViewsAttached()) {
            detachViews();
        }
        this.mMediaPlayer = null;
        this.mVideoSurfaceFrame = null;
        this.mHandler.removeCallbacks(null);
        this.mVideoSurface = null;
        this.mSubtitlesSurface = null;
        this.mVideoTexture = null;
    }

    public void setVideoScale(MediaPlayer.ScaleType scaleType) {
        this.mCurrentScaleType = scaleType;
        updateVideoSurfaces();
    }

    /* JADX WARN: Code duplicated, block: B:79:0x0144 A[PHI: r1
      0x0144: PHI (r1v34 double) = (r1v18 double), (r1v18 double), (r1v41 double) binds: [B:86:0x0156, B:83:0x0151, B:78:0x0142] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:80:0x0147 A[PHI: r1
      0x0147: PHI (r1v33 double) = (r1v18 double), (r1v18 double), (r1v41 double) binds: [B:86:0x0156, B:83:0x0151, B:78:0x0142] A[DONT_GENERATE, DONT_INLINE]] */
    public void updateVideoSurfaces() {
        int width;
        int height;
        double d6;
        double dFloatValue;
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer == null || mediaPlayer.isReleased() || !this.mMediaPlayer.getVLCVout().areViewsAttached()) {
            return;
        }
        DisplayManager displayManager = this.mDisplayManager;
        boolean z7 = false;
        boolean z8 = displayManager == null || displayManager.isPrimary();
        Activity activityResolveActivity = !z8 ? null : AndroidUtil.resolveActivity(this.mVideoSurfaceFrame.getContext());
        if (activityResolveActivity != null) {
            width = this.mVideoSurfaceFrame.getWidth();
            height = this.mVideoSurfaceFrame.getHeight();
        } else {
            DisplayManager displayManager2 = this.mDisplayManager;
            if (displayManager2 == null || displayManager2.getPresentation() == null || this.mDisplayManager.getPresentation().getWindow() == null) {
                return;
            }
            width = this.mDisplayManager.getPresentation().getWindow().getDecorView().getWidth();
            height = this.mDisplayManager.getPresentation().getWindow().getDecorView().getHeight();
        }
        if (width * height == 0) {
            Log.e(TAG, "Invalid surface size");
            return;
        }
        this.mMediaPlayer.getVLCVout().setWindowSize(width, height);
        View view = this.mVideoSurface;
        if (view == null) {
            view = this.mVideoTexture;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (this.mVideoWidth * this.mVideoHeight == 0 || (AndroidUtil.isNougatOrLater && activityResolveActivity != null && activityResolveActivity.isInPictureInPictureMode())) {
            layoutParams.width = -1;
            layoutParams.height = -1;
            view.setLayoutParams(layoutParams);
            SurfaceView surfaceView = this.mSubtitlesSurface;
            if (surfaceView != null) {
                surfaceView.setLayoutParams(layoutParams);
            }
            ViewGroup.LayoutParams layoutParams2 = this.mVideoSurfaceFrame.getLayoutParams();
            layoutParams2.width = -1;
            layoutParams2.height = -1;
            this.mVideoSurfaceFrame.setLayoutParams(layoutParams2);
            if (this.mVideoWidth * this.mVideoHeight == 0) {
                changeMediaPlayerLayout(width, height);
                return;
            }
            return;
        }
        int i8 = layoutParams.width;
        if (i8 == layoutParams.height && i8 == -1) {
            this.mMediaPlayer.setAspectRatio(null);
            this.mMediaPlayer.setScale(0.0f);
        }
        double d8 = width;
        double d9 = height;
        boolean z9 = this.mVideoSurfaceFrame.getResources().getConfiguration().orientation == 1;
        if (this.mMediaPlayer.useOrientationFromBounds().booleanValue()) {
            z9 = height > width;
        }
        if (z8 && z9) {
            z7 = true;
        }
        if ((width > height && z7) || (width < height && !z7)) {
            d8 = d9;
            d9 = d8;
        }
        int i9 = this.mVideoSarDen;
        int i10 = this.mVideoSarNum;
        if (i9 == i10) {
            int i11 = this.mVideoVisibleWidth;
            d6 = i11;
            dFloatValue = ((double) i11) / ((double) this.mVideoVisibleHeight);
        } else {
            d6 = (((double) this.mVideoVisibleWidth) * ((double) i10)) / ((double) i9);
            dFloatValue = d6 / ((double) this.mVideoVisibleHeight);
        }
        double d10 = d8 / d9;
        int i12 = AnonymousClass2.$SwitchMap$org$videolan$libvlc$MediaPlayer$ScaleType[this.mCurrentScaleType.ordinal()];
        if (i12 != 1) {
            if (i12 != 2) {
                if (i12 != 3) {
                    if (i12 != 12) {
                        dFloatValue = this.mCurrentScaleType.getRatio().floatValue();
                        if (d10 < dFloatValue) {
                            d9 = d8 / dFloatValue;
                        } else {
                            d8 = d9 * dFloatValue;
                        }
                    } else {
                        d9 = this.mVideoVisibleHeight;
                        d8 = d6;
                    }
                }
            } else if (d10 >= dFloatValue) {
                d9 = d8 / dFloatValue;
            } else {
                d8 = d9 * dFloatValue;
            }
        } else if (d10 < dFloatValue) {
            d9 = d8 / dFloatValue;
        } else {
            d8 = d9 * dFloatValue;
        }
        layoutParams.width = (int) Math.ceil((d8 * ((double) this.mVideoWidth)) / ((double) this.mVideoVisibleWidth));
        layoutParams.height = (int) Math.ceil((d9 * ((double) this.mVideoHeight)) / ((double) this.mVideoVisibleHeight));
        view.setLayoutParams(layoutParams);
        SurfaceView surfaceView2 = this.mSubtitlesSurface;
        if (surfaceView2 != null) {
            surfaceView2.setLayoutParams(layoutParams);
        }
        view.invalidate();
        SurfaceView surfaceView3 = this.mSubtitlesSurface;
        if (surfaceView3 != null) {
            surfaceView3.invalidate();
        }
    }
}
