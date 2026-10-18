package p156u;

import java.util.Arrays;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class i implements Comparable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f30362G;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public float f30366K;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f30373R;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f30363H = -1;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f30364I = -1;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f30365J = 0;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f30367L = false;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final float[] f30368M = new float[9];

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final float[] f30369N = new float[9];

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public c[] f30370O = new c[16];

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public int f30371P = 0;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f30372Q = 0;

    public i(int i8) {
        this.f30373R = i8;
    }

    public final void a(c cVar) {
        int i8 = 0;
        while (true) {
            int i9 = this.f30371P;
            if (i8 >= i9) {
                c[] cVarArr = this.f30370O;
                if (i9 >= cVarArr.length) {
                    this.f30370O = (c[]) Arrays.copyOf(cVarArr, cVarArr.length * 2);
                }
                c[] cVarArr2 = this.f30370O;
                int i10 = this.f30371P;
                cVarArr2[i10] = cVar;
                this.f30371P = i10 + 1;
                return;
            }
            if (this.f30370O[i8] == cVar) {
                return;
            } else {
                i8++;
            }
        }
    }

    public final void b(c cVar) {
        int i8 = this.f30371P;
        int i9 = 0;
        while (i9 < i8) {
            if (this.f30370O[i9] == cVar) {
                while (i9 < i8 - 1) {
                    c[] cVarArr = this.f30370O;
                    int i10 = i9 + 1;
                    cVarArr[i9] = cVarArr[i10];
                    i9 = i10;
                }
                this.f30371P--;
                return;
            }
            i9++;
        }
    }

    public final void c() {
        this.f30373R = 5;
        this.f30365J = 0;
        this.f30363H = -1;
        this.f30364I = -1;
        this.f30366K = 0.0f;
        this.f30367L = false;
        int i8 = this.f30371P;
        for (int i9 = 0; i9 < i8; i9++) {
            this.f30370O[i9] = null;
        }
        this.f30371P = 0;
        this.f30372Q = 0;
        this.f30362G = false;
        Arrays.fill(this.f30369N, 0.0f);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f30363H - ((i) obj).f30363H;
    }

    public final void d(d dVar, float f8) {
        this.f30366K = f8;
        this.f30367L = true;
        int i8 = this.f30371P;
        this.f30364I = -1;
        for (int i9 = 0; i9 < i8; i9++) {
            this.f30370O[i9].h(dVar, this, false);
        }
        this.f30371P = 0;
    }

    public final void e(d dVar, c cVar) {
        int i8 = this.f30371P;
        for (int i9 = 0; i9 < i8; i9++) {
            this.f30370O[i9].i(dVar, cVar, false);
        }
        this.f30371P = 0;
    }

    public final String toString() {
        return HttpUrl.FRAGMENT_ENCODE_SET + this.f30363H;
    }
}
