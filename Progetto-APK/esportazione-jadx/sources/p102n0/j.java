package p102n0;

import com.google.android.gms.internal.measurement.H1;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class j implements g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f27357b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f27358c = 1.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f27359d = 1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public e f27360e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public e f27361f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public e f27362g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public e f27363h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f27364i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public i f27365j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ByteBuffer f27366k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ShortBuffer f27367l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ByteBuffer f27368m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f27369n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f27370o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f27371p;

    public j() {
        e eVar = e.f27321e;
        this.f27360e = eVar;
        this.f27361f = eVar;
        this.f27362g = eVar;
        this.f27363h = eVar;
        ByteBuffer byteBuffer = g.f27326a;
        this.f27366k = byteBuffer;
        this.f27367l = byteBuffer.asShortBuffer();
        this.f27368m = byteBuffer;
        this.f27357b = -1;
    }

    @Override // p102n0.g
    public final void a() {
        this.f27358c = 1.0f;
        this.f27359d = 1.0f;
        e eVar = e.f27321e;
        this.f27360e = eVar;
        this.f27361f = eVar;
        this.f27362g = eVar;
        this.f27363h = eVar;
        ByteBuffer byteBuffer = g.f27326a;
        this.f27366k = byteBuffer;
        this.f27367l = byteBuffer.asShortBuffer();
        this.f27368m = byteBuffer;
        this.f27357b = -1;
        this.f27364i = false;
        this.f27365j = null;
        this.f27369n = 0L;
        this.f27370o = 0L;
        this.f27371p = false;
    }

    @Override // p102n0.g
    public final boolean b() {
        if (!this.f27371p) {
            return false;
        }
        i iVar = this.f27365j;
        if (iVar != null) {
            H1.i(iVar.f27346m >= 0);
            if (iVar.f27346m * iVar.f27335b * 2 != 0) {
                return false;
            }
        }
        return true;
    }

    @Override // p102n0.g
    public final ByteBuffer c() {
        i iVar = this.f27365j;
        if (iVar != null) {
            H1.i(iVar.f27346m >= 0);
            int i8 = iVar.f27346m;
            int i9 = iVar.f27335b;
            int i10 = i8 * i9 * 2;
            if (i10 > 0) {
                if (this.f27366k.capacity() < i10) {
                    ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(i10).order(ByteOrder.nativeOrder());
                    this.f27366k = byteBufferOrder;
                    this.f27367l = byteBufferOrder.asShortBuffer();
                } else {
                    this.f27366k.clear();
                    this.f27367l.clear();
                }
                ShortBuffer shortBuffer = this.f27367l;
                H1.i(iVar.f27346m >= 0);
                int iMin = Math.min(shortBuffer.remaining() / i9, iVar.f27346m);
                int i11 = iMin * i9;
                shortBuffer.put(iVar.f27345l, 0, i11);
                int i12 = iVar.f27346m - iMin;
                iVar.f27346m = i12;
                short[] sArr = iVar.f27345l;
                System.arraycopy(sArr, i11, sArr, 0, i12 * i9);
                this.f27370o += (long) i10;
                this.f27366k.limit(i10);
                this.f27368m = this.f27366k;
            }
        }
        ByteBuffer byteBuffer = this.f27368m;
        this.f27368m = g.f27326a;
        return byteBuffer;
    }

    @Override // p102n0.g
    public final void d(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            i iVar = this.f27365j;
            iVar.getClass();
            ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            int iRemaining = byteBuffer.remaining();
            this.f27369n += (long) iRemaining;
            int iRemaining2 = shortBufferAsShortBuffer.remaining();
            int i8 = iVar.f27335b;
            int i9 = iRemaining2 / i8;
            short[] sArrC = iVar.c(iVar.f27343j, iVar.f27344k, i9);
            iVar.f27343j = sArrC;
            shortBufferAsShortBuffer.get(sArrC, iVar.f27344k * i8, ((i9 * i8) * 2) / 2);
            iVar.f27344k += i9;
            iVar.f();
            byteBuffer.position(byteBuffer.position() + iRemaining);
        }
    }

    @Override // p102n0.g
    public final void e() {
        i iVar = this.f27365j;
        if (iVar != null) {
            int i8 = iVar.f27344k;
            float f8 = iVar.f27336c;
            float f9 = iVar.f27337d;
            double d6 = f8 / f9;
            double d8 = iVar.f27338e * f9;
            int i9 = iVar.f27351r;
            int i10 = iVar.f27346m + ((int) ((((((((double) (i8 - i9)) / d6) + ((double) i9)) + iVar.f27356w) + ((double) iVar.f27348o)) / d8) + 0.5d));
            iVar.f27356w = 0.0d;
            short[] sArr = iVar.f27343j;
            int i11 = iVar.f27341h * 2;
            iVar.f27343j = iVar.c(sArr, i8, i11 + i8);
            int i12 = 0;
            while (true) {
                int i13 = iVar.f27335b;
                if (i12 >= i11 * i13) {
                    break;
                }
                iVar.f27343j[(i13 * i8) + i12] = 0;
                i12++;
            }
            iVar.f27344k = i11 + iVar.f27344k;
            iVar.f();
            if (iVar.f27346m > i10) {
                iVar.f27346m = Math.max(i10, 0);
            }
            iVar.f27344k = 0;
            iVar.f27351r = 0;
            iVar.f27348o = 0;
        }
        this.f27371p = true;
    }

    @Override // p102n0.g
    public final e f(e eVar) throws f {
        if (eVar.f27324c != 2) {
            throw new f(eVar);
        }
        int i8 = this.f27357b;
        if (i8 == -1) {
            i8 = eVar.f27322a;
        }
        this.f27360e = eVar;
        e eVar2 = new e(i8, eVar.f27323b, 2);
        this.f27361f = eVar2;
        this.f27364i = true;
        return eVar2;
    }

    @Override // p102n0.g
    public final void flush() {
        if (isActive()) {
            e eVar = this.f27360e;
            this.f27362g = eVar;
            e eVar2 = this.f27361f;
            this.f27363h = eVar2;
            if (this.f27364i) {
                this.f27365j = new i(eVar.f27322a, eVar.f27323b, this.f27358c, this.f27359d, eVar2.f27322a);
            } else {
                i iVar = this.f27365j;
                if (iVar != null) {
                    iVar.f27344k = 0;
                    iVar.f27346m = 0;
                    iVar.f27348o = 0;
                    iVar.f27349p = 0;
                    iVar.f27350q = 0;
                    iVar.f27351r = 0;
                    iVar.f27352s = 0;
                    iVar.f27353t = 0;
                    iVar.f27354u = 0;
                    iVar.f27355v = 0;
                    iVar.f27356w = 0.0d;
                }
            }
        }
        this.f27368m = g.f27326a;
        this.f27369n = 0L;
        this.f27370o = 0L;
        this.f27371p = false;
    }

    @Override // p102n0.g
    public final boolean isActive() {
        return this.f27361f.f27322a != -1 && (Math.abs(this.f27358c - 1.0f) >= 1.0E-4f || Math.abs(this.f27359d - 1.0f) >= 1.0E-4f || this.f27361f.f27322a != this.f27360e.f27322a);
    }
}
