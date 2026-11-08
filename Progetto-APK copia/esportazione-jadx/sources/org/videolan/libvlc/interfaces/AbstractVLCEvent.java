package org.videolan.libvlc.interfaces;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractVLCEvent {
    protected final long arg1;
    protected final long arg2;
    protected final float argf1;
    protected final String args1;
    public final int type;

    public interface Listener<T extends AbstractVLCEvent> {
        void onEvent(T t7);
    }

    public AbstractVLCEvent(int i8) {
        this.type = i8;
        this.arg2 = 0L;
        this.arg1 = 0L;
        this.argf1 = 0.0f;
        this.args1 = null;
    }

    public void release() {
    }

    public AbstractVLCEvent(int i8, long j8) {
        this.type = i8;
        this.arg1 = j8;
        this.arg2 = 0L;
        this.argf1 = 0.0f;
        this.args1 = null;
    }

    public AbstractVLCEvent(int i8, long j8, long j9) {
        this.type = i8;
        this.arg1 = j8;
        this.arg2 = j9;
        this.argf1 = 0.0f;
        this.args1 = null;
    }

    public AbstractVLCEvent(int i8, float f8) {
        this.type = i8;
        this.arg2 = 0L;
        this.arg1 = 0L;
        this.argf1 = f8;
        this.args1 = null;
    }

    public AbstractVLCEvent(int i8, long j8, String str) {
        this.type = i8;
        this.arg1 = j8;
        this.arg2 = 0L;
        this.argf1 = 0.0f;
        this.args1 = str;
    }
}
