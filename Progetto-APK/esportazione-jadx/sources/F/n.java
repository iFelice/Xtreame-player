package F;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import java.io.IOException;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public abstract class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f2990a = new ThreadLocal();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final WeakHashMap f2991b = new WeakHashMap(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f2992c = new Object();

    public static void a(k kVar, int i8, ColorStateList colorStateList, Resources.Theme theme) {
        synchronized (f2992c) {
            try {
                WeakHashMap weakHashMap = f2991b;
                SparseArray sparseArray = (SparseArray) weakHashMap.get(kVar);
                if (sparseArray == null) {
                    sparseArray = new SparseArray();
                    weakHashMap.put(kVar, sparseArray);
                }
                sparseArray.append(i8, new j(colorStateList, kVar.f2982a.getConfiguration(), theme));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static Typeface b(Context context, int i8) {
        if (context.isRestricted()) {
            return null;
        }
        return c(context, i8, new TypedValue(), 0, null, false);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00b2  */
    public static Typeface c(Context context, int i8, TypedValue typedValue, int i9, p016c.g gVar, boolean z7) {
        Resources resources = context.getResources();
        resources.getValue(i8, typedValue, true);
        CharSequence charSequence = typedValue.string;
        if (charSequence == null) {
            throw new Resources.NotFoundException("Resource \"" + resources.getResourceName(i8) + "\" (" + Integer.toHexString(i8) + ") is not a Font: " + typedValue);
        }
        String string = charSequence.toString();
        Typeface typefaceA = null;
        if (string.startsWith("res/")) {
            int i10 = typedValue.assetCookie;
            p132r.l lVar = G.e.f3284b;
            Typeface typefaceK = (Typeface) lVar.b(G.e.b(resources, i8, string, i10, i9));
            if (typefaceK == null) {
                try {
                    if (string.toLowerCase().endsWith(".xml")) {
                        e eVarR = com.bumptech.glide.c.r(resources.getXml(i8), resources);
                        if (eVarR == null) {
                            Log.e("ResourcesCompat", "Failed to find font-family tag");
                            if (gVar != null) {
                                gVar.c();
                            }
                        } else {
                            typefaceA = G.e.a(context, eVarR, resources, i8, string, typedValue.assetCookie, i9, gVar, z7);
                        }
                    } else {
                        int i11 = typedValue.assetCookie;
                        typefaceK = G.e.f3283a.K(context, resources, i8, string, i9);
                        if (typefaceK != null) {
                            lVar.d(G.e.b(resources, i8, string, i11, i9), typefaceK);
                        }
                        if (gVar != null) {
                            if (typefaceK != null) {
                                gVar.d(typefaceK);
                            } else {
                                gVar.c();
                            }
                        }
                    }
                } catch (IOException e8) {
                    Log.e("ResourcesCompat", "Failed to read xml resource ".concat(string), e8);
                    if (gVar != null) {
                        gVar.c();
                    }
                } catch (XmlPullParserException e9) {
                    Log.e("ResourcesCompat", "Failed to parse xml resource ".concat(string), e9);
                    if (gVar != null) {
                        gVar.c();
                    }
                }
            } else if (gVar != null) {
                gVar.d(typefaceK);
            }
            typefaceA = typefaceK;
        } else if (gVar != null) {
            gVar.c();
        }
        if (typefaceA != null || gVar != null) {
            return typefaceA;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i8) + " could not be retrieved.");
    }
}
