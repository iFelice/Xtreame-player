package S6;

import android.graphics.RectF;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public V6.b f6472a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f6473b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f6474c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f6475d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f6476e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public RectF f6477f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public W6.a f6478g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public W6.b f6479h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public a f6480i;

    @Override // S6.b
    public final void a(MotionEvent motionEvent) {
        float f8;
        float f9;
        int action = motionEvent.getAction();
        V6.b bVar = this.f6472a;
        a aVar = this.f6480i;
        if (bVar == null || action != 2) {
            if (action == 0) {
                this.f6473b = motionEvent.getX(0);
                this.f6474c = motionEvent.getY(0);
                if (bVar != null && bVar.i()) {
                    float f10 = this.f6473b;
                    float f11 = this.f6474c;
                    RectF rectF = this.f6477f;
                    if (rectF.contains(f10, f11)) {
                        if (this.f6473b < (rectF.width() / 3.0f) + rectF.left) {
                            W6.b bVar2 = aVar.f6464P;
                            if (bVar2 != null) {
                                bVar2.s(0);
                                aVar.a();
                                return;
                            }
                            return;
                        }
                        if (this.f6473b >= ((rectF.width() * 2.0f) / 3.0f) + rectF.left) {
                            aVar.b();
                            return;
                        }
                        W6.b bVar3 = aVar.f6465Q;
                        if (bVar3 != null) {
                            bVar3.s(0);
                            aVar.a();
                            return;
                        }
                        return;
                    }
                }
            } else if (action == 1 || action == 6) {
                this.f6473b = 0.0f;
                this.f6474c = 0.0f;
                this.f6475d = 0.0f;
                this.f6476e = 0.0f;
                if (action == 6) {
                    this.f6473b = -1.0f;
                    this.f6474c = -1.0f;
                }
            }
        } else if (this.f6473b >= 0.0f || this.f6474c >= 0.0f) {
            float x7 = motionEvent.getX(0);
            float y7 = motionEvent.getY(0);
            if (motionEvent.getPointerCount() <= 1 || ((this.f6475d < 0.0f && this.f6476e < 0.0f) || !bVar.i())) {
                f8 = y7;
                if (bVar.h()) {
                    f9 = f8;
                    this.f6478g.s(this.f6473b, this.f6474c, x7, f9);
                    this.f6475d = 0.0f;
                    this.f6476e = 0.0f;
                }
                this.f6473b = x7;
                this.f6474c = f9;
                aVar.a();
                return;
            }
            float x8 = motionEvent.getX(1);
            float y8 = motionEvent.getY(1);
            float fAbs = Math.abs(x7 - x8);
            float fAbs2 = Math.abs(y7 - y8);
            float fAbs3 = Math.abs(this.f6473b - this.f6475d);
            float fAbs4 = Math.abs(this.f6474c - this.f6476e);
            float fAbs5 = Math.abs(y7 - this.f6474c) / Math.abs(x7 - this.f6473b);
            float fAbs6 = Math.abs(y8 - this.f6476e) / Math.abs(x8 - this.f6475d);
            f8 = y7;
            double d6 = fAbs5;
            if (d6 <= 0.25d && fAbs6 <= 0.25d) {
                b(1, fAbs / fAbs3);
            } else if (d6 < 3.73d || fAbs6 < 3.73d) {
                b(0, Math.abs(x7 - this.f6473b) >= Math.abs(f8 - this.f6474c) ? fAbs / fAbs3 : fAbs2 / fAbs4);
            } else {
                b(2, fAbs2 / fAbs4);
            }
            this.f6475d = x8;
            this.f6476e = y8;
            f9 = f8;
            this.f6473b = x7;
            this.f6474c = f9;
            aVar.a();
            return;
        }
        bVar.getClass();
    }

    public final void b(int i8, float f8) {
        float fMin = Math.min(Math.max(f8, 0.9f), 1.1f);
        W6.b bVar = this.f6479h;
        if (bVar != null) {
            double d6 = fMin;
            if (d6 <= 0.9d || d6 >= 1.1d) {
                return;
            }
            bVar.f7501d = fMin;
            bVar.s(i8);
        }
    }
}
