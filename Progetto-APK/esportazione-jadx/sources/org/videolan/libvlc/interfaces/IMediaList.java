package org.videolan.libvlc.interfaces;

import android.os.Handler;

/* JADX INFO: loaded from: classes2.dex */
public interface IMediaList extends IVLCObject<Event> {

    public static class Event extends AbstractVLCEvent {
        public static final int EndReached = 516;
        public static final int ItemAdded = 512;
        public static final int ItemDeleted = 514;
        public final int index;
        public final IMedia media;
        private final boolean retain;

        public Event(int i8, IMedia iMedia, boolean z7, int i9) {
            super(i8);
            if (z7 && (iMedia == null || !iMedia.retain())) {
                throw new IllegalStateException("invalid media reference");
            }
            this.media = iMedia;
            this.retain = z7;
            this.index = i9;
        }

        @Override // org.videolan.libvlc.interfaces.AbstractVLCEvent
        public void release() {
            if (this.retain) {
                this.media.release();
            }
        }
    }

    public interface EventListener extends AbstractVLCEvent.Listener<Event> {
    }

    int getCount();

    IMedia getMediaAt(int i8);

    boolean isLocked();

    void setEventListener(EventListener eventListener, Handler handler);
}
