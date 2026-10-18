package E3;

import android.util.Log;
import com.google.android.gms.common.api.Status;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class q implements H3.o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f2921a;

    public q(r rVar) {
        this.f2921a = rVar;
    }

    @Override // H3.o
    public final void a(String str, long j8, long j9, long j10) {
        r rVar = this.f2921a;
        try {
            rVar.L0(new o(new Status(2103, null, null, null), 1));
        } catch (IllegalStateException e8) {
            H3.b bVar = j.f2901k;
            Log.e(bVar.f3679a, bVar.c("Result already set when calling onRequestReplaced", new Object[0]), e8);
        }
        Iterator it = rVar.f2924Y.f2910i.iterator();
        while (it.hasNext()) {
            ((h) it.next()).a(str, j8, 2103, j9, j10);
        }
    }

    @Override // H3.o
    public final void b(int i8, long j8, long j9, long j10, H3.m mVar, String str) {
        r rVar = this.f2921a;
        try {
            try {
                boolean z7 = mVar instanceof H3.m;
                rVar.L0(new s(new Status(i8, null, null, null)));
            } catch (IllegalStateException e8) {
                e = e8;
                H3.b bVar = j.f2901k;
                Log.e(bVar.f3679a, bVar.c("Result already set when calling onRequestCompleted", new Object[0]), e);
            }
        } catch (IllegalStateException e9) {
            e = e9;
        }
        Iterator it = rVar.f2924Y.f2910i.iterator();
        while (it.hasNext()) {
            ((h) it.next()).a(str, j8, i8, j9, j10);
        }
    }
}
