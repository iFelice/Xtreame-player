package B0;

import C0.C0082g;
import D0.InterfaceC0125o;
import D0.InterfaceC0131v;
import U0.C0343i;
import U0.C0345k;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.decoder.mpegh.MpeghAudioRenderer;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;

/* JADX INFO: renamed from: B0.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0066p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f1050a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p117p0.C f1051b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1052c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f1053d = 5000;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C0082g f1054e = K0.s.f4446g;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f1055f = -9223372036854775807L;

    public C0066p(Context context) {
        this.f1050a = context;
        this.f1051b = new p117p0.C(context, 2);
    }

    public final AbstractC0051h[] a(Handler handler, L l4, L l8, L l9, L l10) {
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        ArrayList arrayList = new ArrayList();
        int i15 = this.f1052c;
        C0082g c0082g = this.f1054e;
        Context context = this.f1050a;
        C0343i c0343i = new C0343i(context);
        c0343i.f6753d = this.f1051b;
        c0343i.f6752c = c0082g;
        long j8 = this.f1053d;
        c0343i.f6754e = j8;
        c0343i.f6755f = false;
        c0343i.f6756g = handler;
        c0343i.f6757h = l4;
        c0343i.f6758i = 50;
        c0343i.f6760k = false;
        c0343i.f6761l = this.f1055f;
        if (Build.VERSION.SDK_INT >= 34) {
            c0343i.f6762m = false;
        }
        H1.i(!c0343i.f6751b);
        Handler handler2 = c0343i.f6756g;
        H1.i((handler2 == null && c0343i.f6757h == null) || !(handler2 == null || c0343i.f6757h == null));
        c0343i.f6751b = true;
        arrayList.add(new C0345k(c0343i));
        if (i15 != 0) {
            int size = arrayList.size();
            if (i15 == 2) {
                size--;
            }
            try {
                try {
                    i13 = size + 1;
                    try {
                        arrayList.add(size, (AbstractC0051h) p194z0.a.class.getConstructor(Long.TYPE, Handler.class, U0.N.class, Integer.TYPE).newInstance(Long.valueOf(j8), handler, l4, 50));
                        p117p0.x.e("DefaultRenderersFactory", "Loaded LibvpxVideoRenderer.");
                    } catch (ClassNotFoundException unused) {
                        size = i13;
                        i13 = size;
                    }
                } catch (Exception e8) {
                    throw new IllegalStateException("Error instantiating VP9 extension", e8);
                }
            } catch (ClassNotFoundException unused2) {
            }
            try {
                try {
                    int i16 = p179x0.d.f31180q0;
                    i14 = i13 + 1;
                    try {
                        arrayList.add(i13, (AbstractC0051h) p179x0.d.class.getConstructor(Long.TYPE, Handler.class, U0.N.class, Integer.TYPE).newInstance(Long.valueOf(j8), handler, l4, 50));
                        p117p0.x.e("DefaultRenderersFactory", "Loaded Libgav1VideoRenderer.");
                    } catch (ClassNotFoundException unused3) {
                        i13 = i14;
                        i14 = i13;
                    }
                } catch (ClassNotFoundException unused4) {
                }
                try {
                    arrayList.add(i14, (AbstractC0051h) androidx.media3.decoder.ffmpeg.a.class.getConstructor(Long.TYPE, Handler.class, U0.N.class, Integer.TYPE).newInstance(Long.valueOf(j8), handler, l4, 50));
                    p117p0.x.e("DefaultRenderersFactory", "Loaded FfmpegVideoRenderer.");
                } catch (ClassNotFoundException unused5) {
                } catch (Exception e9) {
                    throw new IllegalStateException("Error instantiating FFmpeg extension", e9);
                }
            } catch (Exception e10) {
                throw new IllegalStateException("Error instantiating AV1 extension", e10);
            }
        }
        D0.I i17 = new D0.I(context);
        i17.f1757d = false;
        i17.f1758e = false;
        D0.S sA = i17.a();
        int i18 = this.f1052c;
        Context context2 = this.f1050a;
        arrayList.add(new D0.V(context2, this.f1051b, c0082g, handler, l8, sA));
        if (i18 != 0) {
            int size2 = arrayList.size();
            if (i18 == 2) {
                size2--;
            }
            try {
                try {
                    i8 = size2 + 1;
                    try {
                        arrayList.add(size2, (AbstractC0051h) Class.forName("androidx.media3.decoder.midi.MidiRenderer").getConstructor(Context.class, Handler.class, InterfaceC0125o.class, InterfaceC0131v.class).newInstance(context2, handler, l8, sA));
                        p117p0.x.e("DefaultRenderersFactory", "Loaded MidiRenderer.");
                    } catch (ClassNotFoundException unused6) {
                        size2 = i8;
                        i8 = size2;
                    }
                } catch (Exception e11) {
                    throw new IllegalStateException("Error instantiating MIDI extension", e11);
                }
            } catch (ClassNotFoundException unused7) {
            }
            try {
                try {
                    i9 = i8 + 1;
                    try {
                        arrayList.add(i8, (AbstractC0051h) p187y0.a.class.getConstructor(Handler.class, InterfaceC0125o.class, InterfaceC0131v.class).newInstance(handler, l8, sA));
                        p117p0.x.e("DefaultRenderersFactory", "Loaded LibopusAudioRenderer.");
                    } catch (ClassNotFoundException unused8) {
                        i8 = i9;
                        i9 = i8;
                    }
                } catch (Exception e12) {
                    throw new IllegalStateException("Error instantiating Opus extension", e12);
                }
            } catch (ClassNotFoundException unused9) {
            }
            try {
                try {
                    i10 = i9 + 1;
                    try {
                        arrayList.add(i9, (AbstractC0051h) androidx.media3.decoder.flac.k.class.getConstructor(Handler.class, InterfaceC0125o.class, InterfaceC0131v.class).newInstance(handler, l8, sA));
                        p117p0.x.e("DefaultRenderersFactory", "Loaded LibflacAudioRenderer.");
                    } catch (ClassNotFoundException unused10) {
                        i9 = i10;
                        i10 = i9;
                    }
                } catch (ClassNotFoundException unused11) {
                }
                try {
                    try {
                        i11 = i10 + 1;
                        try {
                            arrayList.add(i10, (AbstractC0051h) androidx.media3.decoder.ffmpeg.c.class.getConstructor(Handler.class, InterfaceC0125o.class, InterfaceC0131v.class).newInstance(handler, l8, sA));
                            p117p0.x.e("DefaultRenderersFactory", "Loaded FfmpegAudioRenderer.");
                        } catch (ClassNotFoundException unused12) {
                            i10 = i11;
                            i11 = i10;
                        }
                    } catch (Exception e13) {
                        throw new IllegalStateException("Error instantiating FFmpeg extension", e13);
                    }
                } catch (ClassNotFoundException unused13) {
                }
                try {
                    try {
                        i12 = i11 + 1;
                        try {
                            arrayList.add(i11, (AbstractC0051h) Class.forName("androidx.media3.decoder.iamf.LibiamfAudioRenderer").getConstructor(Context.class, Handler.class, InterfaceC0125o.class, InterfaceC0131v.class).newInstance(context2, handler, l8, sA));
                            p117p0.x.e("DefaultRenderersFactory", "Loaded LibiamfAudioRenderer.");
                        } catch (ClassNotFoundException unused14) {
                            i11 = i12;
                            i12 = i11;
                        }
                    } catch (Exception e14) {
                        throw new IllegalStateException("Error instantiating IAMF extension", e14);
                    }
                } catch (ClassNotFoundException unused15) {
                }
                try {
                    arrayList.add(i12, (AbstractC0051h) MpeghAudioRenderer.class.getConstructor(Handler.class, InterfaceC0125o.class, InterfaceC0131v.class).newInstance(handler, l8, sA));
                    p117p0.x.e("DefaultRenderersFactory", "Loaded MpeghAudioRenderer.");
                } catch (ClassNotFoundException unused16) {
                } catch (Exception e15) {
                    throw new IllegalStateException("Error instantiating MPEG-H extension", e15);
                }
            } catch (Exception e16) {
                throw new IllegalStateException("Error instantiating FLAC extension", e16);
            }
        }
        arrayList.add(new Q0.g(l9, handler.getLooper()));
        Looper looper = handler.getLooper();
        arrayList.add(new L0.b(l10, looper));
        arrayList.add(new L0.b(l10, looper));
        arrayList.add(new V0.b());
        arrayList.add(new J0.g(new F.d(context)));
        return (AbstractC0051h[]) arrayList.toArray(new AbstractC0051h[0]);
    }
}
