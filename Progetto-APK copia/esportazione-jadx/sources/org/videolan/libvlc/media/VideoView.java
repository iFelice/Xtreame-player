package org.videolan.libvlc.media;

import android.content.Context;
import android.graphics.Canvas;
import android.media.MediaFormat;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.MediaController;
import java.io.InputStream;
import java.util.Map;
import org.videolan.libvlc.LibVLC;
import org.videolan.libvlc.Media;
import org.videolan.libvlc.interfaces.ILibVLC;

/* JADX INFO: loaded from: classes2.dex */
public class VideoView extends SurfaceView implements MediaController.MediaPlayerControl {
    private static ILibVLC sILibVLC;

    public VideoView(Context context) {
        super(context);
        sILibVLC = new LibVLC(context, null);
    }

    public void addSubtitleSource(InputStream inputStream, MediaFormat mediaFormat) {
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canPause() {
        return false;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekBackward() {
        return false;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekForward() {
        return false;
    }

    @Override // android.view.SurfaceView, android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getAudioSessionId() {
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getBufferPercentage() {
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getCurrentPosition() {
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getDuration() {
        return -1;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean isPlaying() {
        return false;
    }

    @Override // android.view.SurfaceView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.SurfaceView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i8, KeyEvent keyEvent) {
        return super.onKeyDown(i8, keyEvent);
    }

    @Override // android.view.View
    public void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        super.onLayout(z7, i8, i9, i10, i11);
    }

    @Override // android.view.SurfaceView, android.view.View
    public void onMeasure(int i8, int i9) {
        super.onMeasure(i8, i9);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        return super.onTrackballEvent(motionEvent);
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void pause() {
    }

    public int resolveAdjustedSize(int i8, int i9) {
        return View.getDefaultSize(i8, i9);
    }

    public void resume() {
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void seekTo(int i8) {
    }

    public void setMediaController(MediaController mediaController) {
    }

    public void setOnCompletionListener(android.media.MediaPlayer.OnCompletionListener onCompletionListener) {
    }

    public void setOnErrorListener(android.media.MediaPlayer.OnErrorListener onErrorListener) {
    }

    public void setOnInfoListener(android.media.MediaPlayer.OnInfoListener onInfoListener) {
    }

    public void setOnPreparedListener(android.media.MediaPlayer.OnPreparedListener onPreparedListener) {
    }

    public void setVideoPath(String str) {
        new Media(sILibVLC, str);
    }

    public void setVideoURI(Uri uri) {
        new Media(sILibVLC, uri);
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void start() {
    }

    public void stopPlayback() {
    }

    public void suspend() {
    }

    public void setVideoURI(Uri uri, Map<String, String> map) {
        setVideoURI(uri);
    }

    public VideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VideoView(Context context, AttributeSet attributeSet, int i8) {
        this(context, attributeSet, i8, 0);
    }

    public VideoView(Context context, AttributeSet attributeSet, int i8, int i9) {
        super(context, attributeSet, i8, i9);
    }
}
