package org.videolan.libvlc.interfaces;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public interface ILibVLC extends IVLCObject<Event> {

    public static class Event extends AbstractVLCEvent {
        public Event(int i8) {
            super(i8);
        }
    }

    Context getAppContext();
}
