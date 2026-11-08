package okhttp3.internal.ws;

import D6.e;
import F2.G;
import F6.c;
import Q6.k;
import Q6.l;
import Q6.m;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.EventListener;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.WebSocket;
import okhttp3.WebSocketListener;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealCall;
import p000a.r;
import p027d2.v;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class RealWebSocket implements WebSocket, WebSocketReader.FrameCallback {
    private static final long CANCEL_AFTER_CLOSE_MILLIS = 60000;
    public static final long DEFAULT_MINIMUM_DEFLATE_SIZE = 1024;
    private static final long MAX_QUEUE_SIZE = 16777216;
    private boolean awaitingPong;
    private Call call;
    private boolean enqueuedClose;
    private WebSocketExtensions extensions;
    private boolean failed;
    private final String key;
    private final WebSocketListener listener;
    private final ArrayDeque<Object> messageAndCloseQueue;
    private long minimumDeflateSize;
    private String name;
    private final Request originalRequest;
    private final long pingIntervalMillis;
    private final ArrayDeque<m> pongQueue;
    private long queueSize;
    private final Random random;
    private WebSocketReader reader;
    private int receivedCloseCode;
    private String receivedCloseReason;
    private int receivedPingCount;
    private int receivedPongCount;
    private int sentPingCount;
    private Streams streams;
    private TaskQueue taskQueue;
    private WebSocketWriter writer;
    private Task writerTask;
    public static final Companion Companion = new Companion(null);
    private static final List<Protocol> ONLY_HTTP1 = v.o(Protocol.HTTP_1_1);

    public static final class Close {
        private final long cancelAfterCloseMillis;
        private final int code;
        private final m reason;

        public Close(int i8, m mVar, long j8) {
            this.code = i8;
            this.reason = mVar;
            this.cancelAfterCloseMillis = j8;
        }

        public final long getCancelAfterCloseMillis() {
            return this.cancelAfterCloseMillis;
        }

        public final int getCode() {
            return this.code;
        }

        public final m getReason() {
            return this.reason;
        }
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(e eVar) {
            this();
        }
    }

    public static final class Message {
        private final m data;
        private final int formatOpcode;

        public Message(int i8, m mVar) {
            q0.h(mVar, "data");
            this.formatOpcode = i8;
            this.data = mVar;
        }

        public final m getData() {
            return this.data;
        }

        public final int getFormatOpcode() {
            return this.formatOpcode;
        }
    }

    public static abstract class Streams implements Closeable {
        private final boolean client;
        private final k sink;
        private final l source;

        public Streams(boolean z7, l lVar, k kVar) {
            q0.h(lVar, "source");
            q0.h(kVar, "sink");
            this.client = z7;
            this.source = lVar;
            this.sink = kVar;
        }

        public final boolean getClient() {
            return this.client;
        }

        public final k getSink() {
            return this.sink;
        }

        public final l getSource() {
            return this.source;
        }
    }

    public final class WriterTask extends Task {
        public WriterTask() {
            super(RealWebSocket.this.name + " writer", false, 2, null);
        }

        @Override // okhttp3.internal.concurrent.Task
        public long runOnce() {
            try {
                return RealWebSocket.this.writeOneFrame$okhttp() ? 0L : -1L;
            } catch (IOException e8) {
                RealWebSocket.this.failWebSocket(e8, null);
                return -1L;
            }
        }
    }

    public RealWebSocket(TaskRunner taskRunner, Request request, WebSocketListener webSocketListener, Random random, long j8, WebSocketExtensions webSocketExtensions, long j9) {
        q0.h(taskRunner, "taskRunner");
        q0.h(request, "originalRequest");
        q0.h(webSocketListener, "listener");
        q0.h(random, "random");
        this.originalRequest = request;
        this.listener = webSocketListener;
        this.random = random;
        this.pingIntervalMillis = j8;
        this.extensions = webSocketExtensions;
        this.minimumDeflateSize = j9;
        this.taskQueue = taskRunner.newQueue();
        this.pongQueue = new ArrayDeque<>();
        this.messageAndCloseQueue = new ArrayDeque<>();
        this.receivedCloseCode = -1;
        if (!q0.c("GET", request.method())) {
            throw new IllegalArgumentException(("Request must be GET: " + request.method()).toString());
        }
        m mVar = m.f6065J;
        byte[] bArr = new byte[16];
        random.nextBytes(bArr);
        this.key = G.I(bArr).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isValid(WebSocketExtensions webSocketExtensions) {
        if (webSocketExtensions.unknownValues || webSocketExtensions.clientMaxWindowBits != null) {
            return false;
        }
        if (webSocketExtensions.serverMaxWindowBits != null) {
            c cVar = new c(8, 15, 1);
            int iIntValue = webSocketExtensions.serverMaxWindowBits.intValue();
            if (8 > iIntValue || iIntValue > cVar.f3266H) {
                return false;
            }
        }
        return true;
    }

    private final void runWriter() {
        if (!Util.assertionsEnabled || Thread.holdsLock(this)) {
            Task task = this.writerTask;
            if (task != null) {
                TaskQueue.schedule$default(this.taskQueue, task, 0L, 2, null);
                return;
            }
            return;
        }
        throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
    }

    public final void awaitTermination(long j8, TimeUnit timeUnit) throws InterruptedException {
        q0.h(timeUnit, "timeUnit");
        this.taskQueue.idleLatch().await(j8, timeUnit);
    }

    @Override // okhttp3.WebSocket
    public void cancel() {
        Call call = this.call;
        q0.e(call);
        call.cancel();
    }

    public final void checkUpgradeSuccess$okhttp(Response response, Exchange exchange) throws ProtocolException {
        q0.h(response, "response");
        if (response.code() != 101) {
            throw new ProtocolException("Expected HTTP 101 response but was '" + response.code() + ' ' + response.message() + '\'');
        }
        String strHeader$default = Response.header$default(response, "Connection", null, 2, null);
        if (!I6.k.F0("Upgrade", strHeader$default)) {
            throw new ProtocolException("Expected 'Connection' header value 'Upgrade' but was '" + strHeader$default + '\'');
        }
        String strHeader$default2 = Response.header$default(response, "Upgrade", null, 2, null);
        if (!I6.k.F0("websocket", strHeader$default2)) {
            throw new ProtocolException("Expected 'Upgrade' header value 'websocket' but was '" + strHeader$default2 + '\'');
        }
        String strHeader$default3 = Response.header$default(response, "Sec-WebSocket-Accept", null, 2, null);
        m mVar = m.f6065J;
        String strA = G.C(this.key + WebSocketProtocol.ACCEPT_MAGIC).b("SHA-1").a();
        if (q0.c(strA, strHeader$default3)) {
            if (exchange == null) {
                throw new ProtocolException("Web Socket exchange missing: bad interceptor?");
            }
            return;
        }
        throw new ProtocolException("Expected 'Sec-WebSocket-Accept' header value '" + strA + "' but was '" + strHeader$default3 + '\'');
    }

    @Override // okhttp3.WebSocket
    public boolean close(int i8, String str) {
        return close(i8, str, CANCEL_AFTER_CLOSE_MILLIS);
    }

    public final void connect(OkHttpClient okHttpClient) {
        q0.h(okHttpClient, "client");
        if (this.originalRequest.header("Sec-WebSocket-Extensions") != null) {
            failWebSocket(new ProtocolException("Request header not permitted: 'Sec-WebSocket-Extensions'"), null);
            return;
        }
        OkHttpClient okHttpClientBuild = okHttpClient.newBuilder().eventListener(EventListener.NONE).protocols(ONLY_HTTP1).build();
        final Request requestBuild = this.originalRequest.newBuilder().header("Upgrade", "websocket").header("Connection", "Upgrade").header("Sec-WebSocket-Key", this.key).header("Sec-WebSocket-Version", "13").header("Sec-WebSocket-Extensions", "permessage-deflate").build();
        RealCall realCall = new RealCall(okHttpClientBuild, requestBuild, true);
        this.call = realCall;
        realCall.enqueue(new Callback() { // from class: okhttp3.internal.ws.RealWebSocket.connect.1
            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException iOException) {
                q0.h(call, "call");
                q0.h(iOException, "e");
                RealWebSocket.this.failWebSocket(iOException, null);
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) {
                q0.h(call, "call");
                q0.h(response, "response");
                Exchange exchange = response.exchange();
                try {
                    RealWebSocket.this.checkUpgradeSuccess$okhttp(response, exchange);
                    q0.e(exchange);
                    Streams streamsNewWebSocketStreams = exchange.newWebSocketStreams();
                    WebSocketExtensions webSocketExtensions = WebSocketExtensions.Companion.parse(response.headers());
                    RealWebSocket.this.extensions = webSocketExtensions;
                    if (!RealWebSocket.this.isValid(webSocketExtensions)) {
                        RealWebSocket realWebSocket = RealWebSocket.this;
                        synchronized (realWebSocket) {
                            realWebSocket.messageAndCloseQueue.clear();
                            realWebSocket.close(1010, "unexpected Sec-WebSocket-Extensions in response header");
                        }
                    }
                    try {
                        RealWebSocket.this.initReaderAndWriter(Util.okHttpName + " WebSocket " + requestBuild.url().redact(), streamsNewWebSocketStreams);
                        RealWebSocket.this.getListener$okhttp().onOpen(RealWebSocket.this, response);
                        RealWebSocket.this.loopReader();
                    } catch (Exception e8) {
                        RealWebSocket.this.failWebSocket(e8, null);
                    }
                } catch (IOException e9) {
                    RealWebSocket.this.failWebSocket(e9, response);
                    Util.closeQuietly(response);
                    if (exchange != null) {
                        exchange.webSocketUpgradeFailed();
                    }
                }
            }
        });
    }

    public final void failWebSocket(Exception exc, Response response) {
        q0.h(exc, "e");
        synchronized (this) {
            if (this.failed) {
                return;
            }
            this.failed = true;
            Streams streams = this.streams;
            this.streams = null;
            WebSocketReader webSocketReader = this.reader;
            this.reader = null;
            WebSocketWriter webSocketWriter = this.writer;
            this.writer = null;
            this.taskQueue.shutdown();
            try {
                this.listener.onFailure(this, exc, response);
            } finally {
                if (streams != null) {
                    Util.closeQuietly(streams);
                }
                if (webSocketReader != null) {
                    Util.closeQuietly(webSocketReader);
                }
                if (webSocketWriter != null) {
                    Util.closeQuietly(webSocketWriter);
                }
            }
        }
    }

    public final WebSocketListener getListener$okhttp() {
        return this.listener;
    }

    public final void initReaderAndWriter(String str, Streams streams) {
        q0.h(str, "name");
        q0.h(streams, "streams");
        WebSocketExtensions webSocketExtensions = this.extensions;
        q0.e(webSocketExtensions);
        synchronized (this) {
            try {
                this.name = str;
                this.streams = streams;
                this.writer = new WebSocketWriter(streams.getClient(), streams.getSink(), this.random, webSocketExtensions.perMessageDeflate, webSocketExtensions.noContextTakeover(streams.getClient()), this.minimumDeflateSize);
                this.writerTask = new WriterTask();
                long j8 = this.pingIntervalMillis;
                if (j8 != 0) {
                    final long nanos = TimeUnit.MILLISECONDS.toNanos(j8);
                    TaskQueue taskQueue = this.taskQueue;
                    final String strConcat = str.concat(" ping");
                    taskQueue.schedule(new Task(strConcat) { // from class: okhttp3.internal.ws.RealWebSocket$initReaderAndWriter$lambda$3$$inlined$schedule$1
                        @Override // okhttp3.internal.concurrent.Task
                        public long runOnce() {
                            this.writePingFrame$okhttp();
                            return nanos;
                        }
                    }, nanos);
                }
                if (!this.messageAndCloseQueue.isEmpty()) {
                    runWriter();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.reader = new WebSocketReader(streams.getClient(), streams.getSource(), this, webSocketExtensions.perMessageDeflate, webSocketExtensions.noContextTakeover(!streams.getClient()));
    }

    public final void loopReader() {
        while (this.receivedCloseCode == -1) {
            WebSocketReader webSocketReader = this.reader;
            q0.e(webSocketReader);
            webSocketReader.processNextFrame();
        }
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void onReadClose(int i8, String str) {
        Streams streams;
        WebSocketReader webSocketReader;
        WebSocketWriter webSocketWriter;
        q0.h(str, "reason");
        if (i8 == -1) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        synchronized (this) {
            if (this.receivedCloseCode != -1) {
                throw new IllegalStateException("already closed".toString());
            }
            this.receivedCloseCode = i8;
            this.receivedCloseReason = str;
            streams = null;
            if (this.enqueuedClose && this.messageAndCloseQueue.isEmpty()) {
                Streams streams2 = this.streams;
                this.streams = null;
                webSocketReader = this.reader;
                this.reader = null;
                webSocketWriter = this.writer;
                this.writer = null;
                this.taskQueue.shutdown();
                streams = streams2;
            } else {
                webSocketReader = null;
                webSocketWriter = null;
            }
        }
        try {
            this.listener.onClosing(this, i8, str);
            if (streams != null) {
                this.listener.onClosed(this, i8, str);
            }
        } finally {
            if (streams != null) {
                Util.closeQuietly(streams);
            }
            if (webSocketReader != null) {
                Util.closeQuietly(webSocketReader);
            }
            if (webSocketWriter != null) {
                Util.closeQuietly(webSocketWriter);
            }
        }
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void onReadMessage(m mVar) {
        q0.h(mVar, "bytes");
        this.listener.onMessage(this, mVar);
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public synchronized void onReadPing(m mVar) {
        try {
            q0.h(mVar, "payload");
            if (!this.failed && (!this.enqueuedClose || !this.messageAndCloseQueue.isEmpty())) {
                this.pongQueue.add(mVar);
                runWriter();
                this.receivedPingCount++;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public synchronized void onReadPong(m mVar) {
        q0.h(mVar, "payload");
        this.receivedPongCount++;
        this.awaitingPong = false;
    }

    public final synchronized boolean pong(m mVar) {
        try {
            q0.h(mVar, "payload");
            if (!this.failed && (!this.enqueuedClose || !this.messageAndCloseQueue.isEmpty())) {
                this.pongQueue.add(mVar);
                runWriter();
                return true;
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final boolean processNextFrame() {
        try {
            WebSocketReader webSocketReader = this.reader;
            q0.e(webSocketReader);
            webSocketReader.processNextFrame();
            return this.receivedCloseCode == -1;
        } catch (Exception e8) {
            failWebSocket(e8, null);
            return false;
        }
    }

    @Override // okhttp3.WebSocket
    public synchronized long queueSize() {
        return this.queueSize;
    }

    public final synchronized int receivedPingCount() {
        return this.receivedPingCount;
    }

    public final synchronized int receivedPongCount() {
        return this.receivedPongCount;
    }

    @Override // okhttp3.WebSocket
    public Request request() {
        return this.originalRequest;
    }

    @Override // okhttp3.WebSocket
    public boolean send(m mVar) {
        q0.h(mVar, "bytes");
        return send(mVar, 2);
    }

    public final synchronized int sentPingCount() {
        return this.sentPingCount;
    }

    public final void tearDown() throws InterruptedException {
        this.taskQueue.shutdown();
        this.taskQueue.idleLatch().await(10L, TimeUnit.SECONDS);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x007c A[Catch: all -> 0x0085, TRY_ENTER, TryCatch #0 {all -> 0x0085, blocks: (B:28:0x007c, B:31:0x0087, B:33:0x008b, B:34:0x009b, B:36:0x00aa, B:39:0x00ad, B:40:0x00ae, B:41:0x00af, B:43:0x00b3, B:45:0x00c5, B:53:0x00dd, B:54:0x00e2, B:35:0x009c), top: B:64:0x007a, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x0087 A[Catch: all -> 0x0085, TryCatch #0 {all -> 0x0085, blocks: (B:28:0x007c, B:31:0x0087, B:33:0x008b, B:34:0x009b, B:36:0x00aa, B:39:0x00ad, B:40:0x00ae, B:41:0x00af, B:43:0x00b3, B:45:0x00c5, B:53:0x00dd, B:54:0x00e2, B:35:0x009c), top: B:64:0x007a, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x008b A[Catch: all -> 0x0085, TryCatch #0 {all -> 0x0085, blocks: (B:28:0x007c, B:31:0x0087, B:33:0x008b, B:34:0x009b, B:36:0x00aa, B:39:0x00ad, B:40:0x00ae, B:41:0x00af, B:43:0x00b3, B:45:0x00c5, B:53:0x00dd, B:54:0x00e2, B:35:0x009c), top: B:64:0x007a, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00af A[Catch: all -> 0x0085, TryCatch #0 {all -> 0x0085, blocks: (B:28:0x007c, B:31:0x0087, B:33:0x008b, B:34:0x009b, B:36:0x00aa, B:39:0x00ad, B:40:0x00ae, B:41:0x00af, B:43:0x00b3, B:45:0x00c5, B:53:0x00dd, B:54:0x00e2, B:35:0x009c), top: B:64:0x007a, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00b3 A[Catch: all -> 0x0085, TryCatch #0 {all -> 0x0085, blocks: (B:28:0x007c, B:31:0x0087, B:33:0x008b, B:34:0x009b, B:36:0x00aa, B:39:0x00ad, B:40:0x00ae, B:41:0x00af, B:43:0x00b3, B:45:0x00c5, B:53:0x00dd, B:54:0x00e2, B:35:0x009c), top: B:64:0x007a, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00c5 A[Catch: all -> 0x0085, TRY_LEAVE, TryCatch #0 {all -> 0x0085, blocks: (B:28:0x007c, B:31:0x0087, B:33:0x008b, B:34:0x009b, B:36:0x00aa, B:39:0x00ad, B:40:0x00ae, B:41:0x00af, B:43:0x00b3, B:45:0x00c5, B:53:0x00dd, B:54:0x00e2, B:35:0x009c), top: B:64:0x007a, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:49:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:51:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:53:0x00dd A[Catch: all -> 0x0085, TRY_ENTER, TryCatch #0 {all -> 0x0085, blocks: (B:28:0x007c, B:31:0x0087, B:33:0x008b, B:34:0x009b, B:36:0x00aa, B:39:0x00ad, B:40:0x00ae, B:41:0x00af, B:43:0x00b3, B:45:0x00c5, B:53:0x00dd, B:54:0x00e2, B:35:0x009c), top: B:64:0x007a, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x009c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public final boolean writeOneFrame$okhttp() {
        Streams streams;
        String str;
        WebSocketReader webSocketReader;
        WebSocketWriter webSocketWriter;
        int i8;
        Message message;
        synchronized (this) {
            try {
                if (this.failed) {
                    return false;
                }
                WebSocketWriter webSocketWriter2 = this.writer;
                m mVarPoll = this.pongQueue.poll();
                final boolean z7 = true;
                Object obj = null;
                try {
                    if (mVarPoll == null) {
                        Object objPoll = this.messageAndCloseQueue.poll();
                        if (objPoll instanceof Close) {
                            i8 = this.receivedCloseCode;
                            str = this.receivedCloseReason;
                            if (i8 != -1) {
                                streams = this.streams;
                                this.streams = null;
                                webSocketReader = this.reader;
                                this.reader = null;
                                webSocketWriter = this.writer;
                                this.writer = null;
                                this.taskQueue.shutdown();
                            } else {
                                long cancelAfterCloseMillis = ((Close) objPoll).getCancelAfterCloseMillis();
                                TaskQueue taskQueue = this.taskQueue;
                                final String str2 = this.name + " cancel";
                                taskQueue.schedule(new Task(str2, z7) { // from class: okhttp3.internal.ws.RealWebSocket$writeOneFrame$lambda$8$$inlined$execute$default$1
                                    @Override // okhttp3.internal.concurrent.Task
                                    public long runOnce() {
                                        this.cancel();
                                        return -1L;
                                    }
                                }, TimeUnit.MILLISECONDS.toNanos(cancelAfterCloseMillis));
                                streams = null;
                                webSocketReader = null;
                                webSocketWriter = null;
                            }
                            obj = objPoll;
                        } else {
                            if (objPoll == null) {
                                return false;
                            }
                            streams = null;
                            str = null;
                            webSocketReader = null;
                            webSocketWriter = null;
                            obj = objPoll;
                        }
                        if (mVarPoll != null) {
                            q0.e(webSocketWriter2);
                            webSocketWriter2.writePong(mVarPoll);
                        } else if (obj instanceof Message) {
                            message = (Message) obj;
                            q0.e(webSocketWriter2);
                            webSocketWriter2.writeMessageFrame(message.getFormatOpcode(), message.getData());
                            synchronized (this) {
                                this.queueSize -= (long) message.getData().c();
                            }
                        } else {
                            if (obj instanceof Close) {
                                throw new AssertionError();
                            }
                            Close close = (Close) obj;
                            q0.e(webSocketWriter2);
                            webSocketWriter2.writeClose(close.getCode(), close.getReason());
                            if (streams != null) {
                                WebSocketListener webSocketListener = this.listener;
                                q0.e(str);
                                webSocketListener.onClosed(this, i8, str);
                            }
                        }
                        if (streams != null) {
                            Util.closeQuietly(streams);
                        }
                        if (webSocketReader != null) {
                            Util.closeQuietly(webSocketReader);
                        }
                        if (webSocketWriter != null) {
                            Util.closeQuietly(webSocketWriter);
                        }
                        return true;
                    }
                    streams = null;
                    str = null;
                    webSocketReader = null;
                    webSocketWriter = null;
                    if (mVarPoll != null) {
                        q0.e(webSocketWriter2);
                        webSocketWriter2.writePong(mVarPoll);
                    } else if (obj instanceof Message) {
                        message = (Message) obj;
                        q0.e(webSocketWriter2);
                        webSocketWriter2.writeMessageFrame(message.getFormatOpcode(), message.getData());
                        synchronized (this) {
                            this.queueSize -= (long) message.getData().c();
                        }
                    } else {
                        if (obj instanceof Close) {
                            throw new AssertionError();
                        }
                        Close close2 = (Close) obj;
                        q0.e(webSocketWriter2);
                        webSocketWriter2.writeClose(close2.getCode(), close2.getReason());
                        if (streams != null) {
                            WebSocketListener webSocketListener2 = this.listener;
                            q0.e(str);
                            webSocketListener2.onClosed(this, i8, str);
                        }
                    }
                    if (streams != null) {
                        Util.closeQuietly(streams);
                    }
                    if (webSocketReader != null) {
                        Util.closeQuietly(webSocketReader);
                    }
                    if (webSocketWriter != null) {
                        Util.closeQuietly(webSocketWriter);
                    }
                    return true;
                } catch (Throwable th) {
                    if (streams != null) {
                        Util.closeQuietly(streams);
                    }
                    if (webSocketReader != null) {
                        Util.closeQuietly(webSocketReader);
                    }
                    if (webSocketWriter != null) {
                        Util.closeQuietly(webSocketWriter);
                    }
                    throw th;
                }
                i8 = -1;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void writePingFrame$okhttp() {
        synchronized (this) {
            try {
                if (this.failed) {
                    return;
                }
                WebSocketWriter webSocketWriter = this.writer;
                if (webSocketWriter == null) {
                    return;
                }
                int i8 = this.awaitingPong ? this.sentPingCount : -1;
                this.sentPingCount++;
                this.awaitingPong = true;
                if (i8 != -1) {
                    StringBuilder sb = new StringBuilder("sent ping but didn't receive pong within ");
                    sb.append(this.pingIntervalMillis);
                    sb.append("ms (after ");
                    failWebSocket(new SocketTimeoutException(r.h(sb, i8 - 1, " successful ping/pongs)")), null);
                    return;
                }
                try {
                    webSocketWriter.writePing(m.f6065J);
                } catch (IOException e8) {
                    failWebSocket(e8, null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized boolean close(int i8, String str, long j8) {
        m mVarC;
        try {
            WebSocketProtocol.INSTANCE.validateCloseCode(i8);
            if (str != null) {
                m mVar = m.f6065J;
                mVarC = G.C(str);
                if (mVarC.f6066G.length > 123) {
                    throw new IllegalArgumentException("reason.size() > 123: ".concat(str).toString());
                }
            } else {
                mVarC = null;
            }
            if (!this.failed && !this.enqueuedClose) {
                this.enqueuedClose = true;
                this.messageAndCloseQueue.add(new Close(i8, mVarC, j8));
                runWriter();
                return true;
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    private final synchronized boolean send(m mVar, int i8) {
        if (!this.failed && !this.enqueuedClose) {
            if (this.queueSize + ((long) mVar.c()) > MAX_QUEUE_SIZE) {
                close(WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY, null);
                return false;
            }
            this.queueSize += (long) mVar.c();
            this.messageAndCloseQueue.add(new Message(i8, mVar));
            runWriter();
            return true;
        }
        return false;
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void onReadMessage(String str) {
        q0.h(str, "text");
        this.listener.onMessage(this, str);
    }

    @Override // okhttp3.WebSocket
    public boolean send(String str) {
        q0.h(str, "text");
        m mVar = m.f6065J;
        return send(G.C(str), 1);
    }
}
