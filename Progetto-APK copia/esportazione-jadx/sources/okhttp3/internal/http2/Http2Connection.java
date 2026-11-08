package okhttp3.internal.http2;

import C6.a;
import D6.e;
import Q6.j;
import Q6.k;
import Q6.l;
import Q6.m;
import com.google.protobuf.U2;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.platform.Platform;
import p113o3.r;
import p155t6.h;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class Http2Connection implements Closeable {
    public static final int AWAIT_PING = 3;
    public static final Companion Companion = new Companion(null);
    private static final Settings DEFAULT_SETTINGS;
    public static final int DEGRADED_PING = 2;
    public static final int DEGRADED_PONG_TIMEOUT_NS = 1000000000;
    public static final int INTERVAL_PING = 1;
    public static final int OKHTTP_CLIENT_WINDOW_SIZE = 16777216;
    private long awaitPingsSent;
    private long awaitPongsReceived;
    private final boolean client;
    private final String connectionName;
    private final Set<Integer> currentPushRequests;
    private long degradedPingsSent;
    private long degradedPongDeadlineNs;
    private long degradedPongsReceived;
    private long intervalPingsSent;
    private long intervalPongsReceived;
    private boolean isShutdown;
    private int lastGoodStreamId;
    private final Listener listener;
    private int nextStreamId;
    private final Settings okHttpSettings;
    private Settings peerSettings;
    private final PushObserver pushObserver;
    private final TaskQueue pushQueue;
    private long readBytesAcknowledged;
    private long readBytesTotal;
    private final ReaderRunnable readerRunnable;
    private final TaskQueue settingsListenerQueue;
    private final Socket socket;
    private final Map<Integer, Http2Stream> streams;
    private final TaskRunner taskRunner;
    private long writeBytesMaximum;
    private long writeBytesTotal;
    private final Http2Writer writer;
    private final TaskQueue writerQueue;

    public static final class Builder {
        private boolean client;
        public String connectionName;
        private Listener listener;
        private int pingIntervalMillis;
        private PushObserver pushObserver;
        public k sink;
        public Socket socket;
        public l source;
        private final TaskRunner taskRunner;

        public Builder(boolean z7, TaskRunner taskRunner) {
            q0.h(taskRunner, "taskRunner");
            this.client = z7;
            this.taskRunner = taskRunner;
            this.listener = Listener.REFUSE_INCOMING_STREAMS;
            this.pushObserver = PushObserver.CANCEL;
        }

        public static /* synthetic */ Builder socket$default(Builder builder, Socket socket, String str, l lVar, k kVar, int i8, Object obj) {
            if ((i8 & 2) != 0) {
                str = Util.peerName(socket);
            }
            if ((i8 & 4) != 0) {
                lVar = r.c(r.h(socket));
            }
            if ((i8 & 8) != 0) {
                kVar = r.b(r.g(socket));
            }
            return builder.socket(socket, str, lVar, kVar);
        }

        public final Http2Connection build() {
            return new Http2Connection(this);
        }

        public final boolean getClient$okhttp() {
            return this.client;
        }

        public final String getConnectionName$okhttp() {
            String str = this.connectionName;
            if (str != null) {
                return str;
            }
            q0.I("connectionName");
            throw null;
        }

        public final Listener getListener$okhttp() {
            return this.listener;
        }

        public final int getPingIntervalMillis$okhttp() {
            return this.pingIntervalMillis;
        }

        public final PushObserver getPushObserver$okhttp() {
            return this.pushObserver;
        }

        public final k getSink$okhttp() {
            k kVar = this.sink;
            if (kVar != null) {
                return kVar;
            }
            q0.I("sink");
            throw null;
        }

        public final Socket getSocket$okhttp() {
            Socket socket = this.socket;
            if (socket != null) {
                return socket;
            }
            q0.I("socket");
            throw null;
        }

        public final l getSource$okhttp() {
            l lVar = this.source;
            if (lVar != null) {
                return lVar;
            }
            q0.I("source");
            throw null;
        }

        public final TaskRunner getTaskRunner$okhttp() {
            return this.taskRunner;
        }

        public final Builder listener(Listener listener) {
            q0.h(listener, "listener");
            this.listener = listener;
            return this;
        }

        public final Builder pingIntervalMillis(int i8) {
            this.pingIntervalMillis = i8;
            return this;
        }

        public final Builder pushObserver(PushObserver pushObserver) {
            q0.h(pushObserver, "pushObserver");
            this.pushObserver = pushObserver;
            return this;
        }

        public final void setClient$okhttp(boolean z7) {
            this.client = z7;
        }

        public final void setConnectionName$okhttp(String str) {
            q0.h(str, "<set-?>");
            this.connectionName = str;
        }

        public final void setListener$okhttp(Listener listener) {
            q0.h(listener, "<set-?>");
            this.listener = listener;
        }

        public final void setPingIntervalMillis$okhttp(int i8) {
            this.pingIntervalMillis = i8;
        }

        public final void setPushObserver$okhttp(PushObserver pushObserver) {
            q0.h(pushObserver, "<set-?>");
            this.pushObserver = pushObserver;
        }

        public final void setSink$okhttp(k kVar) {
            q0.h(kVar, "<set-?>");
            this.sink = kVar;
        }

        public final void setSocket$okhttp(Socket socket) {
            q0.h(socket, "<set-?>");
            this.socket = socket;
        }

        public final void setSource$okhttp(l lVar) {
            q0.h(lVar, "<set-?>");
            this.source = lVar;
        }

        public final Builder socket(Socket socket) {
            q0.h(socket, "socket");
            return socket$default(this, socket, null, null, null, 14, null);
        }

        public final Builder socket(Socket socket, String str) {
            q0.h(socket, "socket");
            q0.h(str, "peerName");
            return socket$default(this, socket, str, null, null, 12, null);
        }

        public final Builder socket(Socket socket, String str, l lVar) {
            q0.h(socket, "socket");
            q0.h(str, "peerName");
            q0.h(lVar, "source");
            return socket$default(this, socket, str, lVar, null, 8, null);
        }

        public final Builder socket(Socket socket, String str, l lVar, k kVar) {
            String strConcat;
            q0.h(socket, "socket");
            q0.h(str, "peerName");
            q0.h(lVar, "source");
            q0.h(kVar, "sink");
            setSocket$okhttp(socket);
            if (this.client) {
                strConcat = Util.okHttpName + ' ' + str;
            } else {
                strConcat = "MockWebServer ".concat(str);
            }
            setConnectionName$okhttp(strConcat);
            setSource$okhttp(lVar);
            setSink$okhttp(kVar);
            return this;
        }
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(e eVar) {
            this();
        }

        public final Settings getDEFAULT_SETTINGS() {
            return Http2Connection.DEFAULT_SETTINGS;
        }
    }

    public static abstract class Listener {
        public static final Companion Companion = new Companion(null);
        public static final Listener REFUSE_INCOMING_STREAMS = new Listener() { // from class: okhttp3.internal.http2.Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1
            @Override // okhttp3.internal.http2.Http2Connection.Listener
            public void onStream(Http2Stream http2Stream) {
                q0.h(http2Stream, "stream");
                http2Stream.close(ErrorCode.REFUSED_STREAM, null);
            }
        };

        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(e eVar) {
                this();
            }
        }

        public void onSettings(Http2Connection http2Connection, Settings settings) {
            q0.h(http2Connection, "connection");
            q0.h(settings, "settings");
        }

        public abstract void onStream(Http2Stream http2Stream);
    }

    public final class ReaderRunnable implements Http2Reader.Handler, a {
        private final Http2Reader reader;
        final /* synthetic */ Http2Connection this$0;

        public ReaderRunnable(Http2Connection http2Connection, Http2Reader http2Reader) {
            q0.h(http2Reader, "reader");
            this.this$0 = http2Connection;
            this.reader = http2Reader;
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ackSettings() {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void alternateService(int i8, String str, m mVar, String str2, int i9, long j8) {
            q0.h(str, "origin");
            q0.h(mVar, "protocol");
            q0.h(str2, "host");
        }

        public final void applyAndAckSettings(boolean z7, Settings settings) {
            long initialWindowSize;
            int i8;
            Http2Stream[] http2StreamArr;
            q0.h(settings, "settings");
            final D6.k kVar = new D6.k();
            Http2Writer writer = this.this$0.getWriter();
            final Http2Connection http2Connection = this.this$0;
            synchronized (writer) {
                try {
                    synchronized (http2Connection) {
                        try {
                            Settings peerSettings = http2Connection.getPeerSettings();
                            if (!z7) {
                                Settings settings2 = new Settings();
                                settings2.merge(peerSettings);
                                settings2.merge(settings);
                                settings = settings2;
                            }
                            kVar.f2436G = settings;
                            initialWindowSize = ((long) settings.getInitialWindowSize()) - ((long) peerSettings.getInitialWindowSize());
                            http2StreamArr = (initialWindowSize == 0 || http2Connection.getStreams$okhttp().isEmpty()) ? null : (Http2Stream[]) http2Connection.getStreams$okhttp().values().toArray(new Http2Stream[0]);
                            http2Connection.setPeerSettings((Settings) kVar.f2436G);
                            TaskQueue taskQueue = http2Connection.settingsListenerQueue;
                            final String str = http2Connection.getConnectionName$okhttp() + " onSettings";
                            final boolean z8 = true;
                            taskQueue.schedule(new Task(str, z8) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$applyAndAckSettings$lambda$7$lambda$6$$inlined$execute$default$1
                                @Override // okhttp3.internal.concurrent.Task
                                public long runOnce() {
                                    http2Connection.getListener$okhttp().onSettings(http2Connection, (Settings) kVar.f2436G);
                                    return -1L;
                                }
                            }, 0L);
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    try {
                        http2Connection.getWriter().applyAndAckSettings((Settings) kVar.f2436G);
                    } catch (IOException e8) {
                        http2Connection.failConnection(e8);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (http2StreamArr != null) {
                for (Http2Stream http2Stream : http2StreamArr) {
                    synchronized (http2Stream) {
                        http2Stream.addBytesToWriteWindow(initialWindowSize);
                    }
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void data(boolean z7, int i8, l lVar, int i9) {
            q0.h(lVar, "source");
            if (this.this$0.pushedStream$okhttp(i8)) {
                this.this$0.pushDataLater$okhttp(i8, lVar, i9, z7);
                return;
            }
            Http2Stream stream = this.this$0.getStream(i8);
            if (stream == null) {
                this.this$0.writeSynResetLater$okhttp(i8, ErrorCode.PROTOCOL_ERROR);
                long j8 = i9;
                this.this$0.updateConnectionFlowControl$okhttp(j8);
                lVar.b(j8);
                return;
            }
            stream.receiveData(lVar, i9);
            if (z7) {
                stream.receiveHeaders(Util.EMPTY_HEADERS, true);
            }
        }

        public final Http2Reader getReader$okhttp() {
            return this.reader;
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void goAway(int i8, ErrorCode errorCode, m mVar) {
            int i9;
            Object[] array;
            q0.h(errorCode, "errorCode");
            q0.h(mVar, "debugData");
            mVar.c();
            Http2Connection http2Connection = this.this$0;
            synchronized (http2Connection) {
                array = http2Connection.getStreams$okhttp().values().toArray(new Http2Stream[0]);
                http2Connection.isShutdown = true;
            }
            for (Http2Stream http2Stream : (Http2Stream[]) array) {
                if (http2Stream.getId() > i8 && http2Stream.isLocallyInitiated()) {
                    http2Stream.receiveRstStream(ErrorCode.REFUSED_STREAM);
                    this.this$0.removeStream$okhttp(http2Stream.getId());
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void headers(boolean z7, int i8, int i9, List<Header> list) {
            q0.h(list, "headerBlock");
            if (this.this$0.pushedStream$okhttp(i8)) {
                this.this$0.pushHeadersLater$okhttp(i8, list, z7);
                return;
            }
            final Http2Connection http2Connection = this.this$0;
            synchronized (http2Connection) {
                Http2Stream stream = http2Connection.getStream(i8);
                if (stream != null) {
                    stream.receiveHeaders(Util.toHeaders(list), z7);
                    return;
                }
                if (http2Connection.isShutdown) {
                    return;
                }
                if (i8 <= http2Connection.getLastGoodStreamId$okhttp()) {
                    return;
                }
                if (i8 % 2 == http2Connection.getNextStreamId$okhttp() % 2) {
                    return;
                }
                final Http2Stream http2Stream = new Http2Stream(i8, http2Connection, false, z7, Util.toHeaders(list));
                http2Connection.setLastGoodStreamId$okhttp(i8);
                http2Connection.getStreams$okhttp().put(Integer.valueOf(i8), http2Stream);
                TaskQueue taskQueueNewQueue = http2Connection.taskRunner.newQueue();
                final String str = http2Connection.getConnectionName$okhttp() + '[' + i8 + "] onStream";
                final boolean z8 = true;
                taskQueueNewQueue.schedule(new Task(str, z8) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$headers$lambda$2$$inlined$execute$default$1
                    @Override // okhttp3.internal.concurrent.Task
                    public long runOnce() {
                        try {
                            http2Connection.getListener$okhttp().onStream(http2Stream);
                            return -1L;
                        } catch (IOException e8) {
                            Platform.Companion.get().log("Http2Connection.Listener failure for " + http2Connection.getConnectionName$okhttp(), 4, e8);
                            try {
                                http2Stream.close(ErrorCode.PROTOCOL_ERROR, e8);
                                return -1L;
                            } catch (IOException unused) {
                                return -1L;
                            }
                        }
                    }
                }, 0L);
            }
        }

        @Override // C6.a
        public /* bridge */ /* synthetic */ Object invoke() throws Throwable {
            m145invoke();
            return h.f30319a;
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ping(boolean z7, final int i8, final int i9) {
            if (!z7) {
                TaskQueue taskQueue = this.this$0.writerQueue;
                final String str = this.this$0.getConnectionName$okhttp() + " ping";
                final Http2Connection http2Connection = this.this$0;
                final boolean z8 = true;
                taskQueue.schedule(new Task(str, z8) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1
                    @Override // okhttp3.internal.concurrent.Task
                    public long runOnce() {
                        http2Connection.writePing(true, i8, i9);
                        return -1L;
                    }
                }, 0L);
                return;
            }
            Http2Connection http2Connection2 = this.this$0;
            synchronized (http2Connection2) {
                try {
                    if (i8 == 1) {
                        http2Connection2.intervalPongsReceived++;
                    } else if (i8 == 2) {
                        http2Connection2.degradedPongsReceived++;
                    } else if (i8 == 3) {
                        http2Connection2.awaitPongsReceived++;
                        q0.f(http2Connection2, "null cannot be cast to non-null type java.lang.Object");
                        http2Connection2.notifyAll();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void priority(int i8, int i9, int i10, boolean z7) {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void pushPromise(int i8, int i9, List<Header> list) {
            q0.h(list, "requestHeaders");
            this.this$0.pushRequestLater$okhttp(i9, list);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void rstStream(int i8, ErrorCode errorCode) {
            q0.h(errorCode, "errorCode");
            if (this.this$0.pushedStream$okhttp(i8)) {
                this.this$0.pushResetLater$okhttp(i8, errorCode);
                return;
            }
            Http2Stream http2StreamRemoveStream$okhttp = this.this$0.removeStream$okhttp(i8);
            if (http2StreamRemoveStream$okhttp != null) {
                http2StreamRemoveStream$okhttp.receiveRstStream(errorCode);
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void settings(final boolean z7, final Settings settings) {
            q0.h(settings, "settings");
            TaskQueue taskQueue = this.this$0.writerQueue;
            final String str = this.this$0.getConnectionName$okhttp() + " applyAndAckSettings";
            final boolean z8 = true;
            taskQueue.schedule(new Task(str, z8) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1
                @Override // okhttp3.internal.concurrent.Task
                public long runOnce() {
                    this.applyAndAckSettings(z7, settings);
                    return -1L;
                }
            }, 0L);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void windowUpdate(int i8, long j8) {
            if (i8 == 0) {
                Http2Connection http2Connection = this.this$0;
                synchronized (http2Connection) {
                    http2Connection.writeBytesMaximum = http2Connection.getWriteBytesMaximum() + j8;
                    http2Connection.notifyAll();
                }
                return;
            }
            Http2Stream stream = this.this$0.getStream(i8);
            if (stream != null) {
                synchronized (stream) {
                    stream.addBytesToWriteWindow(j8);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [okhttp3.internal.http2.ErrorCode] */
        /* JADX WARN: Type inference failed for: r0v3 */
        /* JADX WARN: Type inference failed for: r0v5, types: [java.io.Closeable, okhttp3.internal.http2.Http2Reader] */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
        public void m145invoke() throws Throwable {
            ErrorCode errorCode;
            ErrorCode errorCode2 = ErrorCode.INTERNAL_ERROR;
            IOException e8 = null;
            try {
                try {
                    this.reader.readConnectionPreface(this);
                    while (this.reader.nextFrame(false, this)) {
                    }
                    ErrorCode errorCode3 = ErrorCode.NO_ERROR;
                    try {
                        this.this$0.close$okhttp(errorCode3, ErrorCode.CANCEL, null);
                        errorCode = errorCode3;
                    } catch (IOException e9) {
                        e8 = e9;
                        ErrorCode errorCode4 = ErrorCode.PROTOCOL_ERROR;
                        Http2Connection http2Connection = this.this$0;
                        http2Connection.close$okhttp(errorCode4, errorCode4, e8);
                        errorCode = http2Connection;
                    }
                } catch (IOException e10) {
                    e8 = e10;
                } catch (Throwable th) {
                    th = th;
                    errorCode = errorCode2;
                    this.this$0.close$okhttp(errorCode, errorCode2, e8);
                    Util.closeQuietly(this.reader);
                    throw th;
                }
                errorCode2 = this.reader;
                Util.closeQuietly((Closeable) errorCode2);
            } catch (Throwable th2) {
                th = th2;
                this.this$0.close$okhttp(errorCode, errorCode2, e8);
                Util.closeQuietly(this.reader);
                throw th;
            }
        }
    }

    static {
        Settings settings = new Settings();
        settings.set(7, Settings.DEFAULT_INITIAL_WINDOW_SIZE);
        settings.set(5, Http2.INITIAL_MAX_FRAME_SIZE);
        DEFAULT_SETTINGS = settings;
    }

    public Http2Connection(Builder builder) {
        q0.h(builder, "builder");
        boolean client$okhttp = builder.getClient$okhttp();
        this.client = client$okhttp;
        this.listener = builder.getListener$okhttp();
        this.streams = new LinkedHashMap();
        String connectionName$okhttp = builder.getConnectionName$okhttp();
        this.connectionName = connectionName$okhttp;
        this.nextStreamId = builder.getClient$okhttp() ? 3 : 2;
        TaskRunner taskRunner$okhttp = builder.getTaskRunner$okhttp();
        this.taskRunner = taskRunner$okhttp;
        TaskQueue taskQueueNewQueue = taskRunner$okhttp.newQueue();
        this.writerQueue = taskQueueNewQueue;
        this.pushQueue = taskRunner$okhttp.newQueue();
        this.settingsListenerQueue = taskRunner$okhttp.newQueue();
        this.pushObserver = builder.getPushObserver$okhttp();
        Settings settings = new Settings();
        if (builder.getClient$okhttp()) {
            settings.set(7, OKHTTP_CLIENT_WINDOW_SIZE);
        }
        this.okHttpSettings = settings;
        Settings settings2 = DEFAULT_SETTINGS;
        this.peerSettings = settings2;
        this.writeBytesMaximum = settings2.getInitialWindowSize();
        this.socket = builder.getSocket$okhttp();
        this.writer = new Http2Writer(builder.getSink$okhttp(), client$okhttp);
        this.readerRunnable = new ReaderRunnable(this, new Http2Reader(builder.getSource$okhttp(), client$okhttp));
        this.currentPushRequests = new LinkedHashSet();
        if (builder.getPingIntervalMillis$okhttp() != 0) {
            final long nanos = TimeUnit.MILLISECONDS.toNanos(builder.getPingIntervalMillis$okhttp());
            final String strA = U2.A(connectionName$okhttp, " ping");
            taskQueueNewQueue.schedule(new Task(strA) { // from class: okhttp3.internal.http2.Http2Connection$special$$inlined$schedule$1
                @Override // okhttp3.internal.concurrent.Task
                public long runOnce() {
                    boolean z7;
                    synchronized (this) {
                        if (this.intervalPongsReceived < this.intervalPingsSent) {
                            z7 = true;
                        } else {
                            this.intervalPingsSent++;
                            z7 = false;
                        }
                    }
                    if (z7) {
                        this.failConnection(null);
                        return -1L;
                    }
                    this.writePing(false, 1, 0);
                    return nanos;
                }
            }, nanos);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void failConnection(IOException iOException) {
        ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
        close$okhttp(errorCode, errorCode, iOException);
    }

    public static /* synthetic */ void start$default(Http2Connection http2Connection, boolean z7, TaskRunner taskRunner, int i8, Object obj) {
        if ((i8 & 1) != 0) {
            z7 = true;
        }
        if ((i8 & 2) != 0) {
            taskRunner = TaskRunner.INSTANCE;
        }
        http2Connection.start(z7, taskRunner);
    }

    public final synchronized void awaitPong() {
        while (this.awaitPongsReceived < this.awaitPingsSent) {
            wait();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        close$okhttp(ErrorCode.NO_ERROR, ErrorCode.CANCEL, null);
    }

    public final void close$okhttp(ErrorCode errorCode, ErrorCode errorCode2, IOException iOException) {
        int i8;
        Object[] array;
        q0.h(errorCode, "connectionCode");
        q0.h(errorCode2, "streamCode");
        if (Util.assertionsEnabled && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        try {
            shutdown(errorCode);
        } catch (IOException unused) {
        }
        synchronized (this) {
            if (!this.streams.isEmpty()) {
                array = this.streams.values().toArray(new Http2Stream[0]);
                this.streams.clear();
            } else {
                array = null;
            }
        }
        Http2Stream[] http2StreamArr = (Http2Stream[]) array;
        if (http2StreamArr != null) {
            for (Http2Stream http2Stream : http2StreamArr) {
                try {
                    http2Stream.close(errorCode2, iOException);
                } catch (IOException unused2) {
                }
            }
        }
        try {
            this.writer.close();
        } catch (IOException unused3) {
        }
        try {
            this.socket.close();
        } catch (IOException unused4) {
        }
        this.writerQueue.shutdown();
        this.pushQueue.shutdown();
        this.settingsListenerQueue.shutdown();
    }

    public final void flush() {
        this.writer.flush();
    }

    public final boolean getClient$okhttp() {
        return this.client;
    }

    public final String getConnectionName$okhttp() {
        return this.connectionName;
    }

    public final int getLastGoodStreamId$okhttp() {
        return this.lastGoodStreamId;
    }

    public final Listener getListener$okhttp() {
        return this.listener;
    }

    public final int getNextStreamId$okhttp() {
        return this.nextStreamId;
    }

    public final Settings getOkHttpSettings() {
        return this.okHttpSettings;
    }

    public final Settings getPeerSettings() {
        return this.peerSettings;
    }

    public final long getReadBytesAcknowledged() {
        return this.readBytesAcknowledged;
    }

    public final long getReadBytesTotal() {
        return this.readBytesTotal;
    }

    public final ReaderRunnable getReaderRunnable() {
        return this.readerRunnable;
    }

    public final Socket getSocket$okhttp() {
        return this.socket;
    }

    public final synchronized Http2Stream getStream(int i8) {
        return this.streams.get(Integer.valueOf(i8));
    }

    public final Map<Integer, Http2Stream> getStreams$okhttp() {
        return this.streams;
    }

    public final long getWriteBytesMaximum() {
        return this.writeBytesMaximum;
    }

    public final long getWriteBytesTotal() {
        return this.writeBytesTotal;
    }

    public final Http2Writer getWriter() {
        return this.writer;
    }

    public final synchronized boolean isHealthy(long j8) {
        if (this.isShutdown) {
            return false;
        }
        return this.degradedPongsReceived >= this.degradedPingsSent || j8 < this.degradedPongDeadlineNs;
    }

    public final Http2Stream newStream(List<Header> list, boolean z7) {
        q0.h(list, "requestHeaders");
        return newStream(0, list, z7);
    }

    public final synchronized int openStreamCount() {
        return this.streams.size();
    }

    public final void pushDataLater$okhttp(final int i8, l lVar, final int i9, final boolean z7) {
        q0.h(lVar, "source");
        final j jVar = new j();
        long j8 = i9;
        lVar.U(j8);
        lVar.read(jVar, j8);
        TaskQueue taskQueue = this.pushQueue;
        final String str = this.connectionName + '[' + i8 + "] onData";
        final boolean z8 = true;
        taskQueue.schedule(new Task(str, z8) { // from class: okhttp3.internal.http2.Http2Connection$pushDataLater$$inlined$execute$default$1
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                try {
                    boolean zOnData = this.pushObserver.onData(i8, jVar, i9, z7);
                    if (zOnData) {
                        this.getWriter().rstStream(i8, ErrorCode.CANCEL);
                    }
                    if (!zOnData && !z7) {
                        return -1L;
                    }
                    synchronized (this) {
                        this.currentPushRequests.remove(Integer.valueOf(i8));
                    }
                    return -1L;
                } catch (IOException unused) {
                    return -1L;
                }
            }
        }, 0L);
    }

    public final void pushHeadersLater$okhttp(final int i8, final List<Header> list, final boolean z7) {
        q0.h(list, "requestHeaders");
        TaskQueue taskQueue = this.pushQueue;
        final String str = this.connectionName + '[' + i8 + "] onHeaders";
        final boolean z8 = true;
        taskQueue.schedule(new Task(str, z8) { // from class: okhttp3.internal.http2.Http2Connection$pushHeadersLater$$inlined$execute$default$1
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                boolean zOnHeaders = this.pushObserver.onHeaders(i8, list, z7);
                if (zOnHeaders) {
                    try {
                        this.getWriter().rstStream(i8, ErrorCode.CANCEL);
                    } catch (IOException unused) {
                        return -1L;
                    }
                }
                if (!zOnHeaders && !z7) {
                    return -1L;
                }
                synchronized (this) {
                    this.currentPushRequests.remove(Integer.valueOf(i8));
                }
                return -1L;
            }
        }, 0L);
    }

    public final void pushRequestLater$okhttp(final int i8, final List<Header> list) {
        q0.h(list, "requestHeaders");
        synchronized (this) {
            if (this.currentPushRequests.contains(Integer.valueOf(i8))) {
                writeSynResetLater$okhttp(i8, ErrorCode.PROTOCOL_ERROR);
                return;
            }
            this.currentPushRequests.add(Integer.valueOf(i8));
            TaskQueue taskQueue = this.pushQueue;
            final String str = this.connectionName + '[' + i8 + "] onRequest";
            final boolean z7 = true;
            taskQueue.schedule(new Task(str, z7) { // from class: okhttp3.internal.http2.Http2Connection$pushRequestLater$$inlined$execute$default$1
                @Override // okhttp3.internal.concurrent.Task
                public long runOnce() {
                    if (!this.pushObserver.onRequest(i8, list)) {
                        return -1L;
                    }
                    try {
                        this.getWriter().rstStream(i8, ErrorCode.CANCEL);
                        synchronized (this) {
                            this.currentPushRequests.remove(Integer.valueOf(i8));
                        }
                        return -1L;
                    } catch (IOException unused) {
                        return -1L;
                    }
                }
            }, 0L);
        }
    }

    public final void pushResetLater$okhttp(final int i8, final ErrorCode errorCode) {
        q0.h(errorCode, "errorCode");
        TaskQueue taskQueue = this.pushQueue;
        final String str = this.connectionName + '[' + i8 + "] onReset";
        final boolean z7 = true;
        taskQueue.schedule(new Task(str, z7) { // from class: okhttp3.internal.http2.Http2Connection$pushResetLater$$inlined$execute$default$1
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                this.pushObserver.onReset(i8, errorCode);
                synchronized (this) {
                    this.currentPushRequests.remove(Integer.valueOf(i8));
                }
                return -1L;
            }
        }, 0L);
    }

    public final Http2Stream pushStream(int i8, List<Header> list, boolean z7) {
        q0.h(list, "requestHeaders");
        if (!this.client) {
            return newStream(i8, list, z7);
        }
        throw new IllegalStateException("Client cannot push requests.".toString());
    }

    public final boolean pushedStream$okhttp(int i8) {
        return i8 != 0 && (i8 & 1) == 0;
    }

    public final synchronized Http2Stream removeStream$okhttp(int i8) {
        Http2Stream http2StreamRemove;
        http2StreamRemove = this.streams.remove(Integer.valueOf(i8));
        notifyAll();
        return http2StreamRemove;
    }

    public final void sendDegradedPingLater$okhttp() {
        synchronized (this) {
            long j8 = this.degradedPongsReceived;
            long j9 = this.degradedPingsSent;
            if (j8 < j9) {
                return;
            }
            this.degradedPingsSent = j9 + 1;
            this.degradedPongDeadlineNs = System.nanoTime() + ((long) DEGRADED_PONG_TIMEOUT_NS);
            TaskQueue taskQueue = this.writerQueue;
            final String strJ = p000a.r.j(new StringBuilder(), this.connectionName, " ping");
            final boolean z7 = true;
            taskQueue.schedule(new Task(strJ, z7) { // from class: okhttp3.internal.http2.Http2Connection$sendDegradedPingLater$$inlined$execute$default$1
                @Override // okhttp3.internal.concurrent.Task
                public long runOnce() {
                    this.writePing(false, 2, 0);
                    return -1L;
                }
            }, 0L);
        }
    }

    public final void setLastGoodStreamId$okhttp(int i8) {
        this.lastGoodStreamId = i8;
    }

    public final void setNextStreamId$okhttp(int i8) {
        this.nextStreamId = i8;
    }

    public final void setPeerSettings(Settings settings) {
        q0.h(settings, "<set-?>");
        this.peerSettings = settings;
    }

    public final void setSettings(Settings settings) {
        q0.h(settings, "settings");
        synchronized (this.writer) {
            synchronized (this) {
                if (this.isShutdown) {
                    throw new ConnectionShutdownException();
                }
                this.okHttpSettings.merge(settings);
            }
            this.writer.settings(settings);
        }
    }

    public final void shutdown(ErrorCode errorCode) {
        q0.h(errorCode, "statusCode");
        synchronized (this.writer) {
            synchronized (this) {
                if (this.isShutdown) {
                    return;
                }
                this.isShutdown = true;
                this.writer.goAway(this.lastGoodStreamId, errorCode, Util.EMPTY_BYTE_ARRAY);
            }
        }
    }

    public final void start() {
        start$default(this, false, null, 3, null);
    }

    public final synchronized void updateConnectionFlowControl$okhttp(long j8) {
        long j9 = this.readBytesTotal + j8;
        this.readBytesTotal = j9;
        long j10 = j9 - this.readBytesAcknowledged;
        if (j10 >= this.okHttpSettings.getInitialWindowSize() / 2) {
            writeWindowUpdateLater$okhttp(0, j10);
            this.readBytesAcknowledged += j10;
        }
    }

    public final void writeData(int i8, boolean z7, j jVar, long j8) {
        long j9;
        long j10;
        int iMin;
        long j11;
        if (j8 == 0) {
            this.writer.data(z7, i8, jVar, 0);
            return;
        }
        while (j8 > 0) {
            synchronized (this) {
                while (true) {
                    try {
                        try {
                            j9 = this.writeBytesTotal;
                            j10 = this.writeBytesMaximum;
                            if (j9 >= j10) {
                                if (!this.streams.containsKey(Integer.valueOf(i8))) {
                                    throw new IOException("stream closed");
                                }
                                wait();
                            }
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                            throw new InterruptedIOException();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                iMin = Math.min((int) Math.min(j8, j10 - j9), this.writer.maxDataLength());
                j11 = iMin;
                this.writeBytesTotal += j11;
            }
            j8 -= j11;
            this.writer.data(z7 && j8 == 0, i8, jVar, iMin);
        }
    }

    public final void writeHeaders$okhttp(int i8, boolean z7, List<Header> list) {
        q0.h(list, "alternating");
        this.writer.headers(z7, i8, list);
    }

    public final void writePing(boolean z7, int i8, int i9) {
        try {
            this.writer.ping(z7, i8, i9);
        } catch (IOException e8) {
            failConnection(e8);
        }
    }

    public final void writePingAndAwaitPong() {
        writePing();
        awaitPong();
    }

    public final void writeSynReset$okhttp(int i8, ErrorCode errorCode) {
        q0.h(errorCode, "statusCode");
        this.writer.rstStream(i8, errorCode);
    }

    public final void writeSynResetLater$okhttp(final int i8, final ErrorCode errorCode) {
        q0.h(errorCode, "errorCode");
        TaskQueue taskQueue = this.writerQueue;
        final String str = this.connectionName + '[' + i8 + "] writeSynReset";
        final boolean z7 = true;
        taskQueue.schedule(new Task(str, z7) { // from class: okhttp3.internal.http2.Http2Connection$writeSynResetLater$$inlined$execute$default$1
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                try {
                    this.writeSynReset$okhttp(i8, errorCode);
                    return -1L;
                } catch (IOException e8) {
                    this.failConnection(e8);
                    return -1L;
                }
            }
        }, 0L);
    }

    public final void writeWindowUpdateLater$okhttp(final int i8, final long j8) {
        TaskQueue taskQueue = this.writerQueue;
        final String str = this.connectionName + '[' + i8 + "] windowUpdate";
        final boolean z7 = true;
        taskQueue.schedule(new Task(str, z7) { // from class: okhttp3.internal.http2.Http2Connection$writeWindowUpdateLater$$inlined$execute$default$1
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                try {
                    this.getWriter().windowUpdate(i8, j8);
                    return -1L;
                } catch (IOException e8) {
                    this.failConnection(e8);
                    return -1L;
                }
            }
        }, 0L);
    }

    private final Http2Stream newStream(int i8, List<Header> list, boolean z7) {
        int i9;
        Http2Stream http2Stream;
        boolean z8;
        boolean z9 = !z7;
        synchronized (this.writer) {
            try {
                synchronized (this) {
                    try {
                        if (this.nextStreamId > 1073741823) {
                            shutdown(ErrorCode.REFUSED_STREAM);
                        }
                        if (this.isShutdown) {
                            throw new ConnectionShutdownException();
                        }
                        i9 = this.nextStreamId;
                        this.nextStreamId = i9 + 2;
                        http2Stream = new Http2Stream(i9, this, z9, false, null);
                        z8 = !z7 || this.writeBytesTotal >= this.writeBytesMaximum || http2Stream.getWriteBytesTotal() >= http2Stream.getWriteBytesMaximum();
                        if (http2Stream.isOpen()) {
                            this.streams.put(Integer.valueOf(i9), http2Stream);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (i8 == 0) {
                    this.writer.headers(z9, i9, list);
                } else {
                    if (!(true ^ this.client)) {
                        throw new IllegalArgumentException("client streams shouldn't have associated stream IDs".toString());
                    }
                    this.writer.pushPromise(i8, i9, list);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z8) {
            this.writer.flush();
        }
        return http2Stream;
    }

    public final void start(boolean z7) {
        start$default(this, z7, null, 2, null);
    }

    public final void start(boolean z7, TaskRunner taskRunner) {
        q0.h(taskRunner, "taskRunner");
        if (z7) {
            this.writer.connectionPreface();
            this.writer.settings(this.okHttpSettings);
            int initialWindowSize = this.okHttpSettings.getInitialWindowSize();
            if (initialWindowSize != 65535) {
                this.writer.windowUpdate(0, initialWindowSize - Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            }
        }
        taskRunner.newQueue().schedule(new TaskQueue.AnonymousClass1(this.connectionName, true, this.readerRunnable), 0L);
    }

    public final void writePing() {
        synchronized (this) {
            this.awaitPingsSent++;
        }
        writePing(false, 3, 1330343787);
    }
}
