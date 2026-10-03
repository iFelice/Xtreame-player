package okhttp3.internal.cache2;

import D6.e;
import Q6.D;
import Q6.G;
import Q6.j;
import Q6.m;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import okhttp3.internal.Util;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class Relay {
    public static final Companion Companion = new Companion(null);
    private static final long FILE_HEADER_SIZE = 32;
    public static final m PREFIX_CLEAN;
    public static final m PREFIX_DIRTY;
    private static final int SOURCE_FILE = 2;
    private static final int SOURCE_UPSTREAM = 1;
    private final j buffer;
    private final long bufferMaxSize;
    private boolean complete;
    private RandomAccessFile file;
    private final m metadata;
    private int sourceCount;
    private D upstream;
    private final j upstreamBuffer;
    private long upstreamPos;
    private Thread upstreamReader;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(e eVar) {
            this();
        }

        public final Relay edit(File file, D d6, m mVar, long j8) throws IOException {
            q0.h(file, "file");
            q0.h(d6, "upstream");
            q0.h(mVar, "metadata");
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            Relay relay = new Relay(randomAccessFile, d6, 0L, mVar, j8, null);
            randomAccessFile.setLength(0L);
            relay.writeHeader(Relay.PREFIX_DIRTY, -1L, -1L);
            return relay;
        }

        public final Relay read(File file) throws IOException {
            q0.h(file, "file");
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            FileChannel channel = randomAccessFile.getChannel();
            q0.g(channel, "randomAccessFile.channel");
            FileOperator fileOperator = new FileOperator(channel);
            j jVar = new j();
            fileOperator.read(0L, jVar, 32L);
            m mVar = Relay.PREFIX_CLEAN;
            if (!q0.c(jVar.d(mVar.c()), mVar)) {
                throw new IOException("unreadable cache file");
            }
            long j8 = jVar.readLong();
            long j9 = jVar.readLong();
            j jVar2 = new j();
            fileOperator.read(j8 + 32, jVar2, j9);
            return new Relay(randomAccessFile, null, j8, jVar2.d(jVar2.f6064H), 0L, null);
        }
    }

    public final class RelaySource implements D {
        private FileOperator fileOperator;
        private long sourcePos;
        private final G timeout = new G();

        public RelaySource() {
            RandomAccessFile file = Relay.this.getFile();
            q0.e(file);
            FileChannel channel = file.getChannel();
            q0.g(channel, "file!!.channel");
            this.fileOperator = new FileOperator(channel);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.fileOperator == null) {
                return;
            }
            RandomAccessFile randomAccessFile = null;
            this.fileOperator = null;
            Relay relay = Relay.this;
            synchronized (relay) {
                relay.setSourceCount(relay.getSourceCount() - 1);
                if (relay.getSourceCount() == 0) {
                    RandomAccessFile file = relay.getFile();
                    relay.setFile(null);
                    randomAccessFile = file;
                }
            }
            if (randomAccessFile != null) {
                Util.closeQuietly(randomAccessFile);
            }
        }

        @Override // Q6.D
        public long read(j jVar, long j8) throws IOException {
            char c8;
            q0.h(jVar, "sink");
            if (this.fileOperator == null) {
                throw new IllegalStateException("Check failed.".toString());
            }
            Relay relay = Relay.this;
            synchronized (relay) {
                while (true) {
                    try {
                        if (this.sourcePos != relay.getUpstreamPos()) {
                            long upstreamPos = relay.getUpstreamPos() - relay.getBuffer().f6064H;
                            if (this.sourcePos < upstreamPos) {
                                c8 = 2;
                                break;
                            }
                            long jMin = Math.min(j8, relay.getUpstreamPos() - this.sourcePos);
                            relay.getBuffer().O(this.sourcePos - upstreamPos, jVar, jMin);
                            this.sourcePos += jMin;
                            return jMin;
                        }
                        if (!relay.getComplete()) {
                            if (relay.getUpstreamReader() == null) {
                                relay.setUpstreamReader(Thread.currentThread());
                                c8 = 1;
                                break;
                            }
                            this.timeout.waitUntilNotified(relay);
                        } else {
                            return -1L;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (c8 == 2) {
                    long jMin2 = Math.min(j8, Relay.this.getUpstreamPos() - this.sourcePos);
                    FileOperator fileOperator = this.fileOperator;
                    q0.e(fileOperator);
                    fileOperator.read(this.sourcePos + 32, jVar, jMin2);
                    this.sourcePos += jMin2;
                    return jMin2;
                }
                try {
                    D upstream = Relay.this.getUpstream();
                    q0.e(upstream);
                    long j9 = upstream.read(Relay.this.getUpstreamBuffer(), Relay.this.getBufferMaxSize());
                    if (j9 == -1) {
                        Relay relay2 = Relay.this;
                        relay2.commit(relay2.getUpstreamPos());
                        Relay relay3 = Relay.this;
                        synchronized (relay3) {
                            relay3.setUpstreamReader(null);
                            relay3.notifyAll();
                        }
                        return -1L;
                    }
                    long jMin3 = Math.min(j9, j8);
                    Relay.this.getUpstreamBuffer().O(0L, jVar, jMin3);
                    this.sourcePos += jMin3;
                    FileOperator fileOperator2 = this.fileOperator;
                    q0.e(fileOperator2);
                    fileOperator2.write(Relay.this.getUpstreamPos() + 32, Relay.this.getUpstreamBuffer().clone(), j9);
                    Relay relay4 = Relay.this;
                    synchronized (relay4) {
                        try {
                            relay4.getBuffer().write(relay4.getUpstreamBuffer(), j9);
                            if (relay4.getBuffer().f6064H > relay4.getBufferMaxSize()) {
                                relay4.getBuffer().b(relay4.getBuffer().f6064H - relay4.getBufferMaxSize());
                            }
                            relay4.setUpstreamPos(relay4.getUpstreamPos() + j9);
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    Relay relay5 = Relay.this;
                    synchronized (relay5) {
                        relay5.setUpstreamReader(null);
                        relay5.notifyAll();
                    }
                    return jMin3;
                } catch (Throwable th3) {
                    Relay relay6 = Relay.this;
                    synchronized (relay6) {
                        relay6.setUpstreamReader(null);
                        relay6.notifyAll();
                        throw th3;
                    }
                }
            }
        }

        @Override // Q6.D
        public G timeout() {
            return this.timeout;
        }
    }

    static {
        m mVar = m.f6065J;
        PREFIX_CLEAN = F2.G.C("OkHttp cache v1\n");
        PREFIX_DIRTY = F2.G.C("OkHttp DIRTY :(\n");
    }

    public /* synthetic */ Relay(RandomAccessFile randomAccessFile, D d6, long j8, m mVar, long j9, e eVar) {
        this(randomAccessFile, d6, j8, mVar, j9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void writeHeader(m mVar, long j8, long j9) throws IOException {
        j jVar = new j();
        jVar.m0(mVar);
        jVar.s0(j8);
        jVar.s0(j9);
        if (jVar.f6064H != 32) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        RandomAccessFile randomAccessFile = this.file;
        q0.e(randomAccessFile);
        FileChannel channel = randomAccessFile.getChannel();
        q0.g(channel, "file!!.channel");
        new FileOperator(channel).write(0L, jVar, 32L);
    }

    private final void writeMetadata(long j8) throws IOException {
        j jVar = new j();
        jVar.m0(this.metadata);
        RandomAccessFile randomAccessFile = this.file;
        q0.e(randomAccessFile);
        FileChannel channel = randomAccessFile.getChannel();
        q0.g(channel, "file!!.channel");
        new FileOperator(channel).write(32 + j8, jVar, this.metadata.c());
    }

    public final void commit(long j8) throws IOException {
        writeMetadata(j8);
        RandomAccessFile randomAccessFile = this.file;
        q0.e(randomAccessFile);
        randomAccessFile.getChannel().force(false);
        writeHeader(PREFIX_CLEAN, j8, this.metadata.c());
        RandomAccessFile randomAccessFile2 = this.file;
        q0.e(randomAccessFile2);
        randomAccessFile2.getChannel().force(false);
        synchronized (this) {
            this.complete = true;
        }
        D d6 = this.upstream;
        if (d6 != null) {
            Util.closeQuietly(d6);
        }
        this.upstream = null;
    }

    public final j getBuffer() {
        return this.buffer;
    }

    public final long getBufferMaxSize() {
        return this.bufferMaxSize;
    }

    public final boolean getComplete() {
        return this.complete;
    }

    public final RandomAccessFile getFile() {
        return this.file;
    }

    public final int getSourceCount() {
        return this.sourceCount;
    }

    public final D getUpstream() {
        return this.upstream;
    }

    public final j getUpstreamBuffer() {
        return this.upstreamBuffer;
    }

    public final long getUpstreamPos() {
        return this.upstreamPos;
    }

    public final Thread getUpstreamReader() {
        return this.upstreamReader;
    }

    public final boolean isClosed() {
        return this.file == null;
    }

    public final m metadata() {
        return this.metadata;
    }

    public final D newSource() {
        synchronized (this) {
            if (this.file == null) {
                return null;
            }
            this.sourceCount++;
            return new RelaySource();
        }
    }

    public final void setComplete(boolean z7) {
        this.complete = z7;
    }

    public final void setFile(RandomAccessFile randomAccessFile) {
        this.file = randomAccessFile;
    }

    public final void setSourceCount(int i8) {
        this.sourceCount = i8;
    }

    public final void setUpstream(D d6) {
        this.upstream = d6;
    }

    public final void setUpstreamPos(long j8) {
        this.upstreamPos = j8;
    }

    public final void setUpstreamReader(Thread thread) {
        this.upstreamReader = thread;
    }

    private Relay(RandomAccessFile randomAccessFile, D d6, long j8, m mVar, long j9) {
        this.file = randomAccessFile;
        this.upstream = d6;
        this.upstreamPos = j8;
        this.metadata = mVar;
        this.bufferMaxSize = j9;
        this.upstreamBuffer = new j();
        this.complete = d6 == null;
        this.buffer = new j();
    }
}
