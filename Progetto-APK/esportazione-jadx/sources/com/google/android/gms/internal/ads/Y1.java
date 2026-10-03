package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.util.List;
import java.util.Objects;
import org.videolan.libvlc.media.MediaPlayer;

/* JADX INFO: loaded from: classes.dex */
public final class Y1 implements InterfaceC1234e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC1234e0 f17558a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final V1 f17559b;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public W1 f17564g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public C1804p0 f17565h;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f17561d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f17562e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte[] f17563f = Et.f13239f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1534jr f17560c = new C1534jr();

    public Y1(InterfaceC1234e0 interfaceC1234e0, V1 v5) {
        this.f17558a = interfaceC1234e0;
        this.f17559b = v5;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1234e0
    public final void a(C1534jr c1534jr, int i8, int i9) {
        if (this.f17564g == null) {
            this.f17558a.a(c1534jr, i8, i9);
            return;
        }
        g(i8);
        c1534jr.f(this.f17562e, this.f17563f, i8);
        this.f17562e += i8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1234e0
    public final void b(long j8, int i8, int i9, int i10, C1183d0 c1183d0) {
        if (this.f17564g == null) {
            this.f17558a.b(j8, i8, i9, i10, c1183d0);
            return;
        }
        p113o3.r.L(c1183d0 == null, "DRM on subtitles is not supported");
        int i11 = (this.f17562e - i10) - i9;
        this.f17564g.d(this.f17563f, i11, i9, new p149t0.d(this, j8, i8));
        int i12 = i11 + i9;
        this.f17561d = i12;
        if (i12 == this.f17562e) {
            this.f17561d = 0;
            this.f17562e = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1234e0
    public final int c(HL hl, int i8, boolean z7) throws EOFException {
        if (this.f17564g == null) {
            return this.f17558a.c(hl, i8, z7);
        }
        g(i8);
        int iE = hl.e(this.f17563f, this.f17562e, i8);
        if (iE != -1) {
            this.f17562e += iE;
            return iE;
        }
        if (z7) {
            return -1;
        }
        throw new EOFException();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:62:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:88:0x0152  */
    /* JADX WARN: switch over string: strings are not added: [[text/vtt], [text/x-ssa], [application/x-subrip], [application/ttml+xml]] */
    @Override // com.google.android.gms.internal.ads.InterfaceC1234e0
    public final void d(C1804p0 c1804p0) {
        int i8;
        W1 c1340g2;
        byte b8;
        String str = c1804p0.f20383m;
        str.getClass();
        p113o3.r.J(AbstractC2140va.b(str) == 3);
        boolean zEquals = c1804p0.equals(this.f17565h);
        V1 v5 = this.f17559b;
        String str2 = c1804p0.f20383m;
        if (!zEquals) {
            this.f17565h = c1804p0;
            C1561kH c1561kH = (C1561kH) v5;
            switch (c1561kH.f19598G) {
                case 10:
                    if (Objects.equals(str2, "text/x-ssa") || Objects.equals(str2, "text/vtt") || Objects.equals(str2, "application/x-mp4-vtt") || Objects.equals(str2, MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP) || Objects.equals(str2, "application/x-quicktime-tx3g") || Objects.equals(str2, "application/pgs") || Objects.equals(str2, "application/dvbsubs") || Objects.equals(str2, "application/ttml+xml")) {
                        switch (c1561kH.f19598G) {
                            case 10:
                                if (str2 != null) {
                                    switch (str2) {
                                        case "application/dvbsubs":
                                            b8 = 6;
                                            break;
                                        case "application/pgs":
                                            b8 = 5;
                                            break;
                                        case "application/x-mp4-vtt":
                                            b8 = 2;
                                            break;
                                        case "text/vtt":
                                            b8 = 1;
                                            break;
                                        case "application/x-quicktime-tx3g":
                                            b8 = 4;
                                            break;
                                        case "text/x-ssa":
                                            b8 = 0;
                                            break;
                                        case "application/x-subrip":
                                            b8 = 3;
                                            break;
                                        case "application/ttml+xml":
                                            b8 = 7;
                                            break;
                                        default:
                                            b8 = -1;
                                            break;
                                    }
                                    List list = c1804p0.f20386p;
                                    switch (b8) {
                                        case 0:
                                            c1340g2 = new C1340g2(list);
                                            this.f17564g = c1340g2;
                                            break;
                                        case 1:
                                            c1340g2 = new C2218x(5);
                                            this.f17564g = c1340g2;
                                            break;
                                        case 2:
                                            c1340g2 = new V(1);
                                            this.f17564g = c1340g2;
                                            break;
                                        case 3:
                                            c1340g2 = new C1494j2();
                                            this.f17564g = c1340g2;
                                            break;
                                        case 4:
                                            c1340g2 = new p180x1.a(1, list);
                                            this.f17564g = c1340g2;
                                            break;
                                        case 5:
                                            c1340g2 = new C2246xc(3);
                                            break;
                                        case 6:
                                            c1340g2 = new C1236e2(list);
                                            break;
                                        case 7:
                                            c1340g2 = new C1702n2();
                                            break;
                                    }
                                }
                                throw new IllegalArgumentException("Unsupported MIME type: ".concat(String.valueOf(str2)));
                            default:
                                throw new IllegalStateException("This SubtitleParser.Factory doesn't support any formats.");
                        }
                    }
                    this.f17564g = c1340g2;
                default:
                    c1340g2 = null;
                    this.f17564g = c1340g2;
                    break;
            }
        }
        W1 w7 = this.f17564g;
        InterfaceC1234e0 interfaceC1234e0 = this.f17558a;
        if (w7 == null) {
            interfaceC1234e0.d(c1804p0);
            return;
        }
        K k8 = new K(c1804p0);
        k8.f("application/x-media3-cues");
        k8.f14268i = str2;
        k8.f14276q = Long.MAX_VALUE;
        switch (((C1561kH) v5).f19598G) {
            case 10:
                if (str2 != null) {
                    switch (str2) {
                        case "application/dvbsubs":
                        case "application/pgs":
                        case "application/x-mp4-vtt":
                        case "application/x-quicktime-tx3g":
                            i8 = 2;
                            break;
                    }
                    k8.f14258F = i8;
                    interfaceC1234e0.d(new C1804p0(k8));
                    return;
                }
                throw new IllegalArgumentException("Unsupported MIME type: ".concat(String.valueOf(str2)));
            default:
                i8 = 1;
                k8.f14258F = i8;
                interfaceC1234e0.d(new C1804p0(k8));
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1234e0
    public final int e(HL hl, int i8, boolean z7) {
        return c(hl, i8, z7);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1234e0
    public final void f(int i8, C1534jr c1534jr) {
        a(c1534jr, i8, 0);
    }

    public final void g(int i8) {
        int length = this.f17563f.length;
        int i9 = this.f17562e;
        if (length - i9 >= i8) {
            return;
        }
        int i10 = i9 - this.f17561d;
        int iMax = Math.max(i10 + i10, i8 + i10);
        byte[] bArr = this.f17563f;
        byte[] bArr2 = iMax <= bArr.length ? bArr : new byte[iMax];
        System.arraycopy(bArr, this.f17561d, bArr2, 0, i10);
        this.f17561d = 0;
        this.f17562e = i10;
        this.f17563f = bArr2;
    }
}
