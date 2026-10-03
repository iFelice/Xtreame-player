package E1;

import android.content.ComponentName;
import android.media.MediaRouter;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class f0 implements L {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2739a = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f2740b;

    public f0() {
    }

    @Override // E1.L
    public final void a(MediaRouter.RouteInfo routeInfo, int i8) {
    }

    @Override // E1.L
    public final void b(MediaRouter.RouteInfo routeInfo, int i8) {
    }

    public final void c(ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str == null) {
                throw new IllegalArgumentException("category must not be null");
            }
            if (((ArrayList) this.f2740b) == null) {
                this.f2740b = new ArrayList();
            }
            if (!((ArrayList) this.f2740b).contains(str)) {
                ((ArrayList) this.f2740b).add(str);
            }
        }
    }

    public final C0181p d() {
        if (((ArrayList) this.f2740b) == null) {
            return C0181p.f2795c;
        }
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("controlCategories", (ArrayList) this.f2740b);
        return new C0181p((ArrayList) this.f2740b, bundle);
    }

    public final String toString() {
        switch (this.f2739a) {
            case 1:
                return "ProviderMetadata{ componentName=" + ((ComponentName) this.f2740b).flattenToShortString() + " }";
            default:
                return super.toString();
        }
    }

    public f0(C0181p c0181p) {
        if (c0181p != null) {
            c0181p.a();
            if (c0181p.f2797b.isEmpty()) {
                return;
            }
            this.f2740b = new ArrayList(c0181p.f2797b);
            return;
        }
        throw new IllegalArgumentException("selector must not be null");
    }

    public f0(ComponentName componentName) {
        this.f2740b = componentName;
    }
}
