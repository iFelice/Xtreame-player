package p171w0;

import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes.dex */
public abstract class k implements d {
    private int availableInputBufferCount;
    private final g[] availableInputBuffers;
    private int availableOutputBufferCount;
    private final i[] availableOutputBuffers;
    private final Thread decodeThread;
    private g dequeuedInputBuffer;
    private e exception;
    private boolean flushed;
    private final Object lock = new Object();
    private long outputStartTimeUs = -9223372036854775807L;
    private final ArrayDeque<g> queuedInputBuffers = new ArrayDeque<>();
    private final ArrayDeque<i> queuedOutputBuffers = new ArrayDeque<>();
    private boolean released;
    private int skippedOutputBufferCount;

    public k(g[] gVarArr, i[] iVarArr) {
        this.availableInputBuffers = gVarArr;
        this.availableInputBufferCount = gVarArr.length;
        for (int i8 = 0; i8 < this.availableInputBufferCount; i8++) {
            this.availableInputBuffers[i8] = createInputBuffer();
        }
        this.availableOutputBuffers = iVarArr;
        this.availableOutputBufferCount = iVarArr.length;
        for (int i9 = 0; i9 < this.availableOutputBufferCount; i9++) {
            this.availableOutputBuffers[i9] = createOutputBuffer();
        }
        j jVar = new j(this);
        this.decodeThread = jVar;
        jVar.start();
    }

    public static void access$000(k kVar) {
        kVar.getClass();
        do {
            try {
            } catch (InterruptedException e8) {
                throw new IllegalStateException(e8);
            }
        } while (kVar.b());
    }

    public final boolean b() {
        e eVarCreateUnexpectedDecodeException;
        synchronized (this.lock) {
            while (!this.released && (this.queuedInputBuffers.isEmpty() || this.availableOutputBufferCount <= 0)) {
                try {
                    this.lock.wait();
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.released) {
                return false;
            }
            g gVarRemoveFirst = this.queuedInputBuffers.removeFirst();
            i[] iVarArr = this.availableOutputBuffers;
            int i8 = this.availableOutputBufferCount - 1;
            this.availableOutputBufferCount = i8;
            i iVar = iVarArr[i8];
            boolean z7 = this.flushed;
            this.flushed = false;
            if (gVarRemoveFirst.isEndOfStream()) {
                iVar.addFlag(4);
            } else {
                iVar.timeUs = gVarRemoveFirst.f30906K;
                if (gVarRemoveFirst.isFirstSample()) {
                    iVar.addFlag(134217728);
                }
                if (!isAtLeastOutputStartTimeUs(gVarRemoveFirst.f30906K)) {
                    iVar.shouldBeSkipped = true;
                }
                try {
                    eVarCreateUnexpectedDecodeException = decode(gVarRemoveFirst, iVar, z7);
                } catch (OutOfMemoryError e8) {
                    eVarCreateUnexpectedDecodeException = createUnexpectedDecodeException(e8);
                } catch (RuntimeException e9) {
                    eVarCreateUnexpectedDecodeException = createUnexpectedDecodeException(e9);
                }
                if (eVarCreateUnexpectedDecodeException != null) {
                    synchronized (this.lock) {
                        this.exception = eVarCreateUnexpectedDecodeException;
                    }
                    return false;
                }
            }
            synchronized (this.lock) {
                try {
                    if (this.flushed) {
                        iVar.release();
                    } else if (iVar.shouldBeSkipped) {
                        this.skippedOutputBufferCount++;
                        iVar.release();
                    } else {
                        iVar.skippedOutputBufferCount = this.skippedOutputBufferCount;
                        this.skippedOutputBufferCount = 0;
                        this.queuedOutputBuffers.addLast(iVar);
                    }
                    gVarRemoveFirst.clear();
                    g[] gVarArr = this.availableInputBuffers;
                    int i9 = this.availableInputBufferCount;
                    this.availableInputBufferCount = i9 + 1;
                    gVarArr[i9] = gVarRemoveFirst;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return true;
        }
    }

    public abstract g createInputBuffer();

    public abstract i createOutputBuffer();

    public abstract e createUnexpectedDecodeException(Throwable th);

    public abstract e decode(g gVar, i iVar, boolean z7);

    @Override // p171w0.d
    public final void flush() {
        synchronized (this.lock) {
            try {
                this.flushed = true;
                this.skippedOutputBufferCount = 0;
                g gVar = this.dequeuedInputBuffer;
                if (gVar != null) {
                    gVar.clear();
                    g[] gVarArr = this.availableInputBuffers;
                    int i8 = this.availableInputBufferCount;
                    this.availableInputBufferCount = i8 + 1;
                    gVarArr[i8] = gVar;
                    this.dequeuedInputBuffer = null;
                }
                while (!this.queuedInputBuffers.isEmpty()) {
                    g gVarRemoveFirst = this.queuedInputBuffers.removeFirst();
                    gVarRemoveFirst.clear();
                    g[] gVarArr2 = this.availableInputBuffers;
                    int i9 = this.availableInputBufferCount;
                    this.availableInputBufferCount = i9 + 1;
                    gVarArr2[i9] = gVarRemoveFirst;
                }
                while (!this.queuedOutputBuffers.isEmpty()) {
                    this.queuedOutputBuffers.removeFirst().release();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean isAtLeastOutputStartTimeUs(long j8) {
        boolean z7;
        synchronized (this.lock) {
            long j9 = this.outputStartTimeUs;
            z7 = j9 == -9223372036854775807L || j8 >= j9;
        }
        return z7;
    }

    @Override // p171w0.d
    public void release() {
        synchronized (this.lock) {
            this.released = true;
            this.lock.notify();
        }
        try {
            this.decodeThread.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    public void releaseOutputBuffer(i iVar) {
        synchronized (this.lock) {
            iVar.clear();
            i[] iVarArr = this.availableOutputBuffers;
            int i8 = this.availableOutputBufferCount;
            this.availableOutputBufferCount = i8 + 1;
            iVarArr[i8] = iVar;
            if (!this.queuedInputBuffers.isEmpty() && this.availableOutputBufferCount > 0) {
                this.lock.notify();
            }
        }
    }

    public final void setInitialInputBufferSize(int i8) {
        H1.i(this.availableInputBufferCount == this.availableInputBuffers.length);
        for (g gVar : this.availableInputBuffers) {
            gVar.f(i8);
        }
    }

    @Override // p171w0.d
    public final void setOutputStartTimeUs(long j8) {
        synchronized (this.lock) {
            try {
                H1.i(this.availableInputBufferCount == this.availableInputBuffers.length || this.flushed);
                this.outputStartTimeUs = j8;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p171w0.d
    public final g dequeueInputBuffer() {
        g gVar;
        synchronized (this.lock) {
            try {
                e eVar = this.exception;
                if (eVar != null) {
                    throw eVar;
                }
                H1.i(this.dequeuedInputBuffer == null);
                int i8 = this.availableInputBufferCount;
                if (i8 == 0) {
                    gVar = null;
                } else {
                    g[] gVarArr = this.availableInputBuffers;
                    int i9 = i8 - 1;
                    this.availableInputBufferCount = i9;
                    gVar = gVarArr[i9];
                }
                this.dequeuedInputBuffer = gVar;
            } catch (Throwable th) {
                throw th;
            }
        }
        return gVar;
    }

    @Override // p171w0.d
    public final i dequeueOutputBuffer() {
        synchronized (this.lock) {
            try {
                e eVar = this.exception;
                if (eVar != null) {
                    throw eVar;
                }
                if (this.queuedOutputBuffers.isEmpty()) {
                    return null;
                }
                return this.queuedOutputBuffers.removeFirst();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p171w0.d
    public final void queueInputBuffer(g gVar) {
        synchronized (this.lock) {
            try {
                e eVar = this.exception;
                if (eVar != null) {
                    throw eVar;
                }
                H1.d(gVar == this.dequeuedInputBuffer);
                this.queuedInputBuffers.addLast(gVar);
                if (!this.queuedInputBuffers.isEmpty() && this.availableOutputBufferCount > 0) {
                    this.lock.notify();
                }
                this.dequeuedInputBuffer = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
