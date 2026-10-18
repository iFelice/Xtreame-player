package S6;

import android.graphics.RectF;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public V6.b f6481a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f6482b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f6483c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public RectF f6484d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public W6.a f6485e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public a f6486f;

    @Override // S6.b
    public final void a(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        V6.b bVar = this.f6481a;
        a aVar = this.f6486f;
        if (bVar == null || action != 2) {
            if (action == 0) {
                this.f6482b = motionEvent.getX();
                this.f6483c = motionEvent.getY();
                if (bVar != null && bVar.i()) {
                    float f8 = this.f6482b;
                    float f9 = this.f6483c;
                    RectF rectF = this.f6484d;
                    if (rectF.contains(f8, f9)) {
                        if (this.f6482b < (rectF.width() / 3.0f) + rectF.left) {
                            W6.b bVar2 = aVar.f6464P;
                            if (bVar2 != null) {
                                bVar2.s(0);
                                aVar.a();
                                return;
                            }
                            return;
                        }
                        if (this.f6482b >= ((rectF.width() * 2.0f) / 3.0f) + rectF.left) {
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
            } else if (action == 1) {
                this.f6482b = 0.0f;
                this.f6483c = 0.0f;
            }
        } else if (this.f6482b >= 0.0f || this.f6483c >= 0.0f) {
            float x7 = motionEvent.getX();
            float y7 = motionEvent.getY();
            if (bVar.h()) {
                this.f6485e.s(this.f6482b, this.f6483c, x7, y7);
            }
            this.f6482b = x7;
            this.f6483c = y7;
            aVar.a();
            return;
        }
        bVar.getClass();
    }
}
