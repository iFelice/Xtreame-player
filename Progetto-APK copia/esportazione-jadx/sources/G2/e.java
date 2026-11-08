package G2;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import java.util.List;
import p173w2.k;
import p173w2.l;
import p173w2.n;
import y2.D;

/* JADX INFO: loaded from: classes.dex */
public final class e implements n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final k f3399b = new k("com.bumptech.glide.load.resource.bitmap.Downsampler.Theme", null, k.f30995e);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f3400a;

    public e(Context context) {
        this.f3400a = context.getApplicationContext();
    }

    @Override // p173w2.n
    public final boolean a(Object obj, l lVar) {
        String scheme = ((Uri) obj).getScheme();
        return scheme != null && scheme.equals("android.resource");
    }

    @Override // p173w2.n
    public final /* bridge */ /* synthetic */ D b(Object obj, int i8, int i9, l lVar) {
        return c((Uri) obj, lVar);
    }

    public final D c(Uri uri, l lVar) {
        Context contextCreatePackageContext;
        int identifier;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new IllegalStateException("Package name for " + uri + " is null or empty");
        }
        Context context = this.f3400a;
        int i8 = 0;
        if (authority.equals(context.getPackageName())) {
            contextCreatePackageContext = context;
        } else {
            try {
                contextCreatePackageContext = context.createPackageContext(authority, 0);
            } catch (PackageManager.NameNotFoundException e8) {
                if (!authority.contains(context.getPackageName())) {
                    throw new IllegalArgumentException("Failed to obtain context or unrecognized Uri format for: " + uri, e8);
                }
                contextCreatePackageContext = context;
            }
        }
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            List<String> pathSegments2 = uri.getPathSegments();
            String authority2 = uri.getAuthority();
            String str = pathSegments2.get(0);
            String str2 = pathSegments2.get(1);
            identifier = contextCreatePackageContext.getResources().getIdentifier(str2, str, authority2);
            if (identifier == 0) {
                identifier = Resources.getSystem().getIdentifier(str2, str, "android");
            }
            if (identifier == 0) {
                throw new IllegalArgumentException("Failed to find resource id for: " + uri);
            }
        } else {
            if (pathSegments.size() != 1) {
                throw new IllegalArgumentException("Unrecognized Uri format: " + uri);
            }
            try {
                identifier = Integer.parseInt(uri.getPathSegments().get(0));
            } catch (NumberFormatException e9) {
                throw new IllegalArgumentException("Unrecognized Uri format: " + uri, e9);
            }
        }
        Resources.Theme theme = authority.equals(context.getPackageName()) ? (Resources.Theme) lVar.c(f3399b) : null;
        Drawable drawableJ = theme == null ? com.bumptech.glide.d.j(context, contextCreatePackageContext, identifier, null) : com.bumptech.glide.d.j(context, context, identifier, theme);
        if (drawableJ != null) {
            return new d(drawableJ, i8);
        }
        return null;
    }
}
