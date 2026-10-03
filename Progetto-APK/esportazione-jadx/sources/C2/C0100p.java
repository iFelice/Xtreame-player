package C2;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: C2.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0100p implements C {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1406a = 3;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f1407b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f1408c;

    public C0100p(ArrayList arrayList, M.c cVar) {
        this.f1407b = arrayList;
        this.f1408c = cVar;
    }

    @Override // C2.C
    public final boolean a(Object obj) {
        int i8 = this.f1406a;
        Object obj2 = this.f1407b;
        switch (i8) {
            case 0:
                return true;
            case 1:
                Iterator it = ((List) obj2).iterator();
                while (it.hasNext()) {
                    if (((C) it.next()).a(obj)) {
                        return true;
                    }
                }
                return false;
            case 2:
                return true;
            default:
                Uri uri = (Uri) obj;
                return "android.resource".equals(uri.getScheme()) && ((Context) obj2).getPackageName().equals(uri.getAuthority());
        }
    }

    @Override // C2.C
    public final B b(Object obj, int i8, int i9, p173w2.l lVar) {
        B b8;
        int i10 = this.f1406a;
        Object obj2 = this.f1407b;
        B b9 = null;
        Object obj3 = this.f1408c;
        switch (i10) {
            case 0:
                return c((Integer) obj, i8, i9, lVar);
            case 1:
                List list = (List) obj2;
                int size = list.size();
                ArrayList arrayList = new ArrayList(size);
                p173w2.i iVar = null;
                for (int i11 = 0; i11 < size; i11++) {
                    C c8 = (C) list.get(i11);
                    if (c8.a(obj) && (b8 = c8.b(obj, i8, i9, lVar)) != null) {
                        arrayList.add(b8.f1349c);
                        iVar = b8.f1347a;
                    }
                }
                if (arrayList.isEmpty() || iVar == null) {
                    return null;
                }
                return new B(iVar, new F(arrayList, (M.c) obj3));
            case 2:
                return c((Integer) obj, i8, i9, lVar);
            default:
                Uri uri = (Uri) obj;
                List<String> pathSegments = uri.getPathSegments();
                if (pathSegments.size() == 1) {
                    try {
                        int i12 = Integer.parseInt(uri.getPathSegments().get(0));
                        if (i12 != 0) {
                            b9 = ((C) obj3).b(Integer.valueOf(i12), i8, i9, lVar);
                        } else if (Log.isLoggable("ResourceUriLoader", 5)) {
                            Log.w("ResourceUriLoader", "Failed to parse a valid non-0 resource id from: " + uri);
                        }
                        return b9;
                    } catch (NumberFormatException e8) {
                        if (!Log.isLoggable("ResourceUriLoader", 5)) {
                            return b9;
                        }
                        Log.w("ResourceUriLoader", "Failed to parse resource id from: " + uri, e8);
                        return b9;
                    }
                }
                if (pathSegments.size() != 2) {
                    if (!Log.isLoggable("ResourceUriLoader", 5)) {
                        return null;
                    }
                    Log.w("ResourceUriLoader", "Failed to parse resource uri: " + uri);
                    return null;
                }
                List<String> pathSegments2 = uri.getPathSegments();
                Context context = (Context) obj2;
                int identifier = context.getResources().getIdentifier(pathSegments2.get(1), pathSegments2.get(0), context.getPackageName());
                if (identifier != 0) {
                    return ((C) obj3).b(Integer.valueOf(identifier), i8, i9, lVar);
                }
                if (!Log.isLoggable("ResourceUriLoader", 5)) {
                    return null;
                }
                Log.w("ResourceUriLoader", "Failed to find resource id for: " + uri);
                return null;
        }
    }

    public final B c(Integer num, int i8, int i9, p173w2.l lVar) {
        Uri uri;
        int i10 = this.f1406a;
        Object obj = this.f1407b;
        Object obj2 = this.f1408c;
        switch (i10) {
            case 0:
                Resources.Theme theme = (Resources.Theme) lVar.c(G2.e.f3399b);
                return new B(new O2.d(num), new C0098n(theme, theme != null ? theme.getResources() : ((Context) obj).getResources(), (InterfaceC0099o) obj2, num.intValue()));
            default:
                try {
                    uri = Uri.parse("android.resource://" + ((Resources) obj2).getResourcePackageName(num.intValue()) + '/' + ((Resources) obj2).getResourceTypeName(num.intValue()) + '/' + ((Resources) obj2).getResourceEntryName(num.intValue()));
                    break;
                } catch (Resources.NotFoundException e8) {
                    if (Log.isLoggable("ResourceLoader", 5)) {
                        Log.w("ResourceLoader", "Received invalid resource id: " + num, e8);
                    }
                    uri = null;
                }
                if (uri == null) {
                    return null;
                }
                return ((C) obj).b(uri, i8, i9, lVar);
        }
    }

    public final String toString() {
        switch (this.f1406a) {
            case 1:
                return "MultiModelLoader{modelLoaders=" + Arrays.toString(((List) this.f1407b).toArray()) + '}';
            default:
                return super.toString();
        }
    }

    public C0100p(Resources resources, C c8) {
        this.f1408c = resources;
        this.f1407b = c8;
    }

    public C0100p(Context context, InterfaceC0099o interfaceC0099o) {
        this.f1407b = context.getApplicationContext();
        this.f1408c = interfaceC0099o;
    }

    public C0100p(Context context, C c8) {
        this.f1407b = context.getApplicationContext();
        this.f1408c = c8;
    }
}
