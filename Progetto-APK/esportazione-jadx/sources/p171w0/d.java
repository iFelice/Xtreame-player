package p171w0;

/* JADX INFO: loaded from: classes.dex */
public interface d {
    Object dequeueInputBuffer();

    Object dequeueOutputBuffer();

    void flush();

    String getName();

    void queueInputBuffer(Object obj);

    void release();

    void setOutputStartTimeUs(long j8);
}
