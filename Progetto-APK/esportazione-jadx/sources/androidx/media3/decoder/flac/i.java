package androidx.media3.decoder.flac;

import W0.C0373f;
import W0.C0374g;
import W0.F;
import W0.L;
import W0.s;
import W0.t;
import W0.u;
import W0.w;
import W0.x;
import Z3.C;
import androidx.media3.extractor.FlacStreamMetadata;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.N;
import p094m0.O;
import p117p0.E;
import p117p0.M;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class i implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final E f9421a = new E();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f9422b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public FlacDecoderJni f9423c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public u f9424d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public L f9425e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f9426f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public FlacStreamMetadata f9427g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public c f9428h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public N f9429i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public d f9430j;

    public i(int i8) {
        this.f9422b = (i8 & 1) != 0;
    }

    public final void a(t tVar) throws IOException {
        F xVar;
        if (this.f9426f) {
            return;
        }
        FlacDecoderJni flacDecoderJni = this.f9423c;
        try {
            FlacStreamMetadata flacStreamMetadataDecodeStreamMetadata = flacDecoderJni.decodeStreamMetadata();
            this.f9426f = true;
            if (this.f9427g == null) {
                this.f9427g = flacStreamMetadataDecodeStreamMetadata;
                int maxDecodedFrameSize = flacStreamMetadataDecodeStreamMetadata.getMaxDecodedFrameSize();
                E e8 = this.f9421a;
                e8.I(maxDecodedFrameSize);
                this.f9428h = new c(ByteBuffer.wrap(e8.f28035a));
                long j8 = tVar.j();
                u uVar = this.f9424d;
                c cVar = this.f9428h;
                d dVar = null;
                if (flacDecoderJni.getSeekPoints(0L) != null) {
                    xVar = new h(flacStreamMetadataDecodeStreamMetadata.getDurationUs(), flacDecoderJni);
                } else if (j8 == -1 || flacStreamMetadataDecodeStreamMetadata.totalSamples <= 0) {
                    xVar = new x(flacStreamMetadataDecodeStreamMetadata.getDurationUs());
                } else {
                    d dVar2 = new d(flacStreamMetadataDecodeStreamMetadata, flacDecoderJni.getDecodePosition(), j8, flacDecoderJni, cVar);
                    dVar = dVar2;
                    xVar = (C0373f) dVar2.f7425b;
                }
                uVar.r(xVar);
                this.f9430j = dVar;
                N metadataCopyWithAppendedEntriesFrom = flacStreamMetadataDecodeStreamMetadata.getMetadataCopyWithAppendedEntriesFrom(this.f9429i);
                L l4 = this.f9425e;
                C3135s c3135s = new C3135s();
                c3135s.f26995m = O.p("audio/flac");
                c3135s.f26996n = O.p("audio/raw");
                c3135s.f26990h = flacStreamMetadataDecodeStreamMetadata.getDecodedBitrate();
                c3135s.f26991i = flacStreamMetadataDecodeStreamMetadata.getDecodedBitrate();
                c3135s.f26997o = flacStreamMetadataDecodeStreamMetadata.getMaxDecodedFrameSize();
                c3135s.f26973F = flacStreamMetadataDecodeStreamMetadata.channels;
                c3135s.f26974G = flacStreamMetadataDecodeStreamMetadata.sampleRate;
                int i8 = flacStreamMetadataDecodeStreamMetadata.bitsPerSample;
                String str = M.f28050a;
                c3135s.f26975H = M.A(i8, ByteOrder.LITTLE_ENDIAN);
                c3135s.f26993k = metadataCopyWithAppendedEntriesFrom;
                l4.b(new C3136t(c3135s));
                L l8 = this.f9425e;
                flacStreamMetadataDecodeStreamMetadata.getDurationUs();
                l8.getClass();
            }
        } catch (IOException e9) {
            flacDecoderJni.reset(0L);
            tVar.l(0L, e9);
            throw e9;
        }
    }

    @Override // W0.s
    public final void d(u uVar) {
        this.f9424d = uVar;
        this.f9425e = uVar.t(0, 1);
        this.f9424d.j();
        try {
            this.f9423c = new FlacDecoderJni();
        } catch (f e8) {
            throw new RuntimeException(e8);
        }
    }

    @Override // W0.s
    public final boolean g(t tVar) {
        this.f9429i = C.g(tVar, !this.f9422b);
        E e8 = new E(4);
        tVar.c(0, e8.f28035a, 4);
        return e8.B() == 1716281667;
    }

    @Override // W0.s
    public final int h(t tVar, w wVar) {
        if (tVar.r() == 0 && !this.f9422b && this.f9429i == null) {
            this.f9429i = C.g(tVar, true);
        }
        FlacDecoderJni flacDecoderJni = this.f9423c;
        flacDecoderJni.getClass();
        flacDecoderJni.setData(tVar);
        try {
            a(tVar);
            d dVar = this.f9430j;
            E e8 = this.f9421a;
            if (dVar != null && ((C0374g) dVar.f7427d) != null) {
                c cVar = this.f9428h;
                L l4 = this.f9425e;
                int iA = dVar.a(tVar, wVar);
                ByteBuffer byteBuffer = cVar.f9414a;
                if (iA == 0 && byteBuffer.limit() > 0) {
                    int iLimit = byteBuffer.limit();
                    long j8 = cVar.f9415b;
                    e8.L(0);
                    l4.e(iLimit, e8);
                    l4.d(j8, 1, iLimit, 0, null);
                }
                flacDecoderJni.clearData();
                return iA;
            }
            ByteBuffer byteBuffer2 = this.f9428h.f9414a;
            long decodePosition = flacDecoderJni.getDecodePosition();
            try {
                flacDecoderJni.decodeSampleWithBacktrackPosition(byteBuffer2, decodePosition);
                int iLimit2 = byteBuffer2.limit();
                if (iLimit2 == 0) {
                    flacDecoderJni.clearData();
                    return -1;
                }
                long lastFrameTimestamp = flacDecoderJni.getLastFrameTimestamp();
                L l8 = this.f9425e;
                e8.L(0);
                l8.e(iLimit2, e8);
                l8.d(lastFrameTimestamp, 1, iLimit2, 0, null);
                int i8 = flacDecoderJni.isEndOfData() ? -1 : 0;
                flacDecoderJni.clearData();
                return i8;
            } catch (g e9) {
                throw new IOException("Cannot read frame at position " + decodePosition, e9);
            }
        } catch (Throwable th) {
            flacDecoderJni.clearData();
            throw th;
        }
    }

    @Override // W0.s
    public final void i(long j8, long j9) {
        if (j8 == 0) {
            this.f9426f = false;
        }
        FlacDecoderJni flacDecoderJni = this.f9423c;
        if (flacDecoderJni != null) {
            flacDecoderJni.reset(j8);
        }
        d dVar = this.f9430j;
        if (dVar != null) {
            dVar.d(j9);
        }
    }

    @Override // W0.s
    public final List j() {
        z4.F f8 = H.f31804H;
        return d0.f31844K;
    }

    @Override // W0.s
    public final void release() {
        this.f9430j = null;
        FlacDecoderJni flacDecoderJni = this.f9423c;
        if (flacDecoderJni != null) {
            flacDecoderJni.release();
            this.f9423c = null;
        }
    }

    @Override // W0.s
    public final s b() {
        return this;
    }
}
