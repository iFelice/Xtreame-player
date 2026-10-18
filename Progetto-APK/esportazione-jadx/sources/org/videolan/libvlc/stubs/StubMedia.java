package org.videolan.libvlc.stubs;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import java.io.FileDescriptor;
import org.videolan.libvlc.interfaces.ILibVLC;
import org.videolan.libvlc.interfaces.IMedia;
import org.videolan.libvlc.interfaces.IMediaList;

/* JADX INFO: loaded from: classes2.dex */
public class StubMedia extends StubVLCObject<IMedia.Event> implements IMedia {
    private ILibVLC mILibVLC;
    private int mType;
    private Uri mUri;

    public StubMedia(ILibVLC iLibVLC, String str) {
        this(iLibVLC, Uri.parse(str));
    }

    private String getTitle() {
        return "file".equals(this.mUri.getScheme()) ? this.mUri.getLastPathSegment() : this.mUri.getPath();
    }

    @Override // org.videolan.libvlc.interfaces.IMedia
    public void addOption(String str) {
    }

    @Override // org.videolan.libvlc.interfaces.IMedia
    public void addSlave(IMedia.Slave slave) {
    }

    @Override // org.videolan.libvlc.interfaces.IMedia
    public void clearSlaves() {
    }

    @Override // org.videolan.libvlc.interfaces.IMedia
    public long getDuration() {
        return 0L;
    }

    @Override // org.videolan.libvlc.stubs.StubVLCObject, org.videolan.libvlc.interfaces.IVLCObject
    public ILibVLC getLibVLC() {
        return this.mILibVLC;
    }

    @Override // org.videolan.libvlc.interfaces.IMedia
    public String getMeta(int i8) {
        Uri uri = this.mUri;
        if (uri == null) {
            return null;
        }
        if (i8 == 0) {
            return getTitle();
        }
        if (i8 != 10) {
            return null;
        }
        return uri.getPath();
    }

    @Override // org.videolan.libvlc.interfaces.IMedia
    public IMedia.Slave[] getSlaves() {
        return new IMedia.Slave[0];
    }

    @Override // org.videolan.libvlc.interfaces.IMedia
    public int getState() {
        return 0;
    }

    @Override // org.videolan.libvlc.interfaces.IMedia
    public IMedia.Stats getStats() {
        return null;
    }

    @Override // org.videolan.libvlc.interfaces.IMedia
    public IMedia.Track getTrack(int i8) {
        return null;
    }

    @Override // org.videolan.libvlc.interfaces.IMedia
    public int getTrackCount() {
        return 0;
    }

    @Override // org.videolan.libvlc.interfaces.IMedia
    public int getType() {
        return this.mType;
    }

    @Override // org.videolan.libvlc.interfaces.IMedia
    public Uri getUri() {
        return this.mUri;
    }

    @Override // org.videolan.libvlc.interfaces.IMedia
    public boolean isParsed() {
        return false;
    }

    @Override // org.videolan.libvlc.stubs.StubVLCObject, org.videolan.libvlc.interfaces.IVLCObject
    public boolean isReleased() {
        return false;
    }

    @Override // org.videolan.libvlc.interfaces.IMedia
    public boolean parse() {
        return false;
    }

    @Override // org.videolan.libvlc.interfaces.IMedia
    public boolean parseAsync() {
        return false;
    }

    @Override // org.videolan.libvlc.stubs.StubVLCObject, org.videolan.libvlc.interfaces.IVLCObject
    public void release() {
    }

    @Override // org.videolan.libvlc.stubs.StubVLCObject, org.videolan.libvlc.interfaces.IVLCObject
    public boolean retain() {
        return false;
    }

    @Override // org.videolan.libvlc.interfaces.IMedia
    public void setDefaultMediaPlayerOptions() {
    }

    @Override // org.videolan.libvlc.interfaces.IMedia
    public void setEventListener(IMedia.EventListener eventListener) {
    }

    @Override // org.videolan.libvlc.interfaces.IMedia
    public void setHWDecoderEnabled(boolean z7, boolean z8) {
    }

    public void setType(int i8) {
        this.mType = i8;
    }

    @Override // org.videolan.libvlc.interfaces.IMedia
    public IMediaList subItems() {
        return new StubMediaList();
    }

    public StubMedia(ILibVLC iLibVLC, Uri uri) {
        this.mType = 0;
        this.mUri = uri;
        this.mILibVLC = iLibVLC;
    }

    @Override // org.videolan.libvlc.interfaces.IMedia
    public boolean parse(int i8) {
        return false;
    }

    @Override // org.videolan.libvlc.interfaces.IMedia
    public boolean parseAsync(int i8) {
        return false;
    }

    @Override // org.videolan.libvlc.interfaces.IMedia
    public boolean parseAsync(int i8, int i9) {
        return false;
    }

    @Override // org.videolan.libvlc.interfaces.IMedia
    public String getMeta(int i8, boolean z7) {
        return getMeta(i8);
    }

    public StubMedia(ILibVLC iLibVLC, FileDescriptor fileDescriptor) {
        this.mType = 0;
        this.mILibVLC = iLibVLC;
    }

    public StubMedia(ILibVLC iLibVLC, AssetFileDescriptor assetFileDescriptor) {
        this.mType = 0;
        this.mILibVLC = iLibVLC;
    }
}
