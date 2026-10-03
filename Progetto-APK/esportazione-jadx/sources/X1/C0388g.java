package X1;

import android.view.View;
import java.util.ArrayList;

/* JADX INFO: renamed from: X1.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0388g extends r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7565a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f7566b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f7567c;

    public C0388g(int i8, Object obj, Object obj2) {
        this.f7565a = i8;
        this.f7567c = obj;
        this.f7566b = obj2;
    }

    @Override // X1.p
    public final void b(q qVar) {
        int i8 = this.f7565a;
        Object obj = this.f7566b;
        switch (i8) {
            case 0:
                B b8 = z.f7627a;
                b8.j((View) obj, 1.0f);
                b8.getClass();
                qVar.w(this);
                break;
            case 1:
                ((ArrayList) ((p132r.f) obj).get(((s) this.f7567c).f7612H)).remove(qVar);
                break;
            default:
                ((q) obj).z();
                qVar.w(this);
                break;
        }
    }
}
