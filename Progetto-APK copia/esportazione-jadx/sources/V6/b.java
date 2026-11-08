package V6;

import android.graphics.Color;
import android.graphics.Paint;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import okhttp3.HttpUrl;
import org.videolan.libvlc.media.MediaPlayer;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends a {

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public final NumberFormat[] f7197A0;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public final int f7198B0;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final String f7199a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final String[] f7200b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final float f7201c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final double[] f7202d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final double[] f7203e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final double[] f7204f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final double[] f7205g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f7206h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public int f7207i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final HashMap f7208j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final LinkedHashMap f7209k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public boolean f7210l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public boolean f7211m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public final boolean f7212n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public final boolean f7213o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public int f7214p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public final LinkedHashMap f7215q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public final float f7216r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public final int[] f7217s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public final int f7218t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public final Paint.Align f7219u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public final Paint.Align[] f7220v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public final float f7221w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public final Paint.Align[] f7222x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public final int f7223y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public final int[] f7224z0;

    public b() {
        this.f7178G = a.f7177Z.toString();
        this.f7179H = true;
        this.f7180I = -3355444;
        this.f7181J = -3355444;
        this.f7182K = true;
        this.f7183L = true;
        this.f7184M = true;
        this.f7185N = -3355444;
        this.f7186O = 10.0f;
        this.f7187P = true;
        this.f7188Q = 12.0f;
        this.f7189R = false;
        this.f7190S = false;
        this.f7191T = new ArrayList();
        this.f7192U = true;
        this.f7193V = new int[]{20, 30, 10, 20};
        this.f7194W = false;
        this.f7195X = 1.5f;
        this.f7196Y = 15;
        this.f7199a0 = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f7201c0 = 12.0f;
        this.f7206h0 = 5;
        this.f7207i0 = 5;
        this.f7198B0 = 1;
        this.f7208j0 = new HashMap();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f7209k0 = linkedHashMap;
        this.f7210l0 = true;
        this.f7211m0 = true;
        this.f7212n0 = true;
        this.f7213o0 = true;
        this.f7214p0 = 0;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        this.f7215q0 = linkedHashMap2;
        this.f7216r0 = 3.0f;
        Paint.Align align = Paint.Align.CENTER;
        this.f7219u0 = align;
        this.f7221w0 = 2.0f;
        this.f7223y0 = -3355444;
        this.f7218t0 = 1;
        this.f7200b0 = new String[1];
        this.f7220v0 = new Paint.Align[1];
        this.f7222x0 = new Paint.Align[1];
        this.f7224z0 = new int[]{-3355444};
        this.f7197A0 = new NumberFormat[]{NumberFormat.getNumberInstance()};
        this.f7202d0 = new double[1];
        this.f7203e0 = new double[1];
        this.f7204f0 = new double[1];
        this.f7205g0 = new double[1];
        this.f7217s0 = new int[1];
        this.f7217s0[0] = Color.argb(75, MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK, MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK, MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK);
        double[] dArr = this.f7202d0;
        dArr[0] = Double.MAX_VALUE;
        double[] dArr2 = this.f7203e0;
        dArr2[0] = -1.7976931348623157E308d;
        double[] dArr3 = this.f7204f0;
        dArr3[0] = Double.MAX_VALUE;
        this.f7205g0[0] = -1.7976931348623157E308d;
        linkedHashMap2.put(0, new double[]{dArr[0], dArr2[0], dArr3[0], -1.7976931348623157E308d});
        this.f7200b0[0] = HttpUrl.FRAGMENT_ENCODE_SET;
        linkedHashMap.put(0, new HashMap());
        this.f7220v0[0] = align;
        this.f7222x0[0] = Paint.Align.LEFT;
    }

    public final synchronized Double[] a() {
        return (Double[]) this.f7208j0.keySet().toArray(new Double[0]);
    }

    public final synchronized String b(int i8, Double d6) {
        return (String) ((Map) this.f7209k0.get(Integer.valueOf(i8))).get(d6);
    }

    public final synchronized Double[] c(int i8) {
        return (Double[]) ((Map) this.f7209k0.get(Integer.valueOf(i8))).keySet().toArray(new Double[0]);
    }

    public final boolean d(int i8) {
        return this.f7203e0[i8] != -1.7976931348623157E308d;
    }

    public final boolean e(int i8) {
        return this.f7205g0[i8] != -1.7976931348623157E308d;
    }

    public final boolean f(int i8) {
        return this.f7202d0[i8] != Double.MAX_VALUE;
    }

    public final boolean g(int i8) {
        return this.f7204f0[i8] != Double.MAX_VALUE;
    }

    public final boolean h() {
        return this.f7210l0 || this.f7211m0;
    }

    public final boolean i() {
        return this.f7212n0 || this.f7213o0;
    }

    public final void j(int i8, double d6) {
        if (!d(i8)) {
            ((double[]) this.f7215q0.get(Integer.valueOf(i8)))[1] = d6;
        }
        this.f7203e0[i8] = d6;
    }

    public final void k(int i8, double d6) {
        if (!f(i8)) {
            ((double[]) this.f7215q0.get(Integer.valueOf(i8)))[0] = d6;
        }
        this.f7202d0[i8] = d6;
    }

    public final void l(int i8, double d6) {
        if (!e(i8)) {
            ((double[]) this.f7215q0.get(Integer.valueOf(i8)))[3] = d6;
        }
        this.f7205g0[i8] = d6;
    }

    public final void m(int i8, double d6) {
        if (!g(i8)) {
            ((double[]) this.f7215q0.get(Integer.valueOf(i8)))[2] = d6;
        }
        this.f7204f0[i8] = d6;
    }
}
