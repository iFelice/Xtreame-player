package K;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class g implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4280a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f4281b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f4282c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f4283d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f4284e;

    public /* synthetic */ g(String str, Context context, Object obj, int i8, int i9) {
        this.f4280a = i9;
        this.f4281b = str;
        this.f4282c = context;
        this.f4284e = obj;
        this.f4283d = i8;
    }

    public final i a() {
        int i8 = this.f4280a;
        int i9 = this.f4283d;
        Object obj = this.f4284e;
        Context context = this.f4282c;
        String str = this.f4281b;
        switch (i8) {
            case 0:
                Object[] objArr = {(f) obj};
                ArrayList arrayList = new ArrayList(1);
                Object obj2 = objArr[0];
                Objects.requireNonNull(obj2);
                arrayList.add(obj2);
                return j.b(str, context, Collections.unmodifiableList(arrayList), i9);
            default:
                try {
                    return j.b(str, context, (List) obj, i9);
                } catch (Throwable unused) {
                    return new i(-3);
                }
        }
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        switch (this.f4280a) {
            case 0:
                break;
        }
        return a();
    }
}
