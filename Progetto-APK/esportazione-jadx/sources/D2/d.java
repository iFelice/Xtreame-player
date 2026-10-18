package D2;

import C2.B;
import C2.C;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import com.bumptech.glide.g;
import java.io.File;
import java.io.FileNotFoundException;
import p173w2.l;

/* JADX INFO: loaded from: classes.dex */
public final class d implements com.bumptech.glide.load.data.e {

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public static final String[] f2309Q = {"_data"};

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f2310G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C f2311H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C f2312I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Uri f2313J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f2314K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final int f2315L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final l f2316M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final Class f2317N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public volatile boolean f2318O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public volatile com.bumptech.glide.load.data.e f2319P;

    public d(Context context, C c8, C c9, Uri uri, int i8, int i9, l lVar, Class cls) {
        this.f2310G = context.getApplicationContext();
        this.f2311H = c8;
        this.f2312I = c9;
        this.f2313J = uri;
        this.f2314K = i8;
        this.f2315L = i9;
        this.f2316M = lVar;
        this.f2317N = cls;
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        return this.f2317N;
    }

    public final com.bumptech.glide.load.data.e b() throws Throwable {
        B b8;
        boolean zIsExternalStorageLegacy = Environment.isExternalStorageLegacy();
        Cursor cursor = null;
        Context context = this.f2310G;
        l lVar = this.f2316M;
        int i8 = this.f2315L;
        int i9 = this.f2314K;
        if (zIsExternalStorageLegacy) {
            Uri uri = this.f2313J;
            try {
                Cursor cursorQuery = context.getContentResolver().query(uri, f2309Q, null, null, null);
                if (cursorQuery != null) {
                    try {
                        if (cursorQuery.moveToFirst()) {
                            String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                            if (TextUtils.isEmpty(string)) {
                                throw new FileNotFoundException("File path was empty in media store for: " + uri);
                            }
                            File file = new File(string);
                            cursorQuery.close();
                            b8 = this.f2311H.b(file, i9, i8, lVar);
                        }
                    } catch (Throwable th) {
                        th = th;
                        cursor = cursorQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                throw new FileNotFoundException("Failed to media store entry for: " + uri);
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            Uri requireOriginal = this.f2313J;
            boolean zD = Z3.C.d(requireOriginal);
            C c8 = this.f2312I;
            if (zD && requireOriginal.getPathSegments().contains("picker")) {
                b8 = c8.b(requireOriginal, i9, i8, lVar);
            } else {
                if (context.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0) {
                    requireOriginal = MediaStore.setRequireOriginal(requireOriginal);
                }
                b8 = c8.b(requireOriginal, i9, i8, lVar);
            }
        }
        if (b8 != null) {
            return b8.f1349c;
        }
        return null;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void c() {
        com.bumptech.glide.load.data.e eVar = this.f2319P;
        if (eVar != null) {
            eVar.c();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        this.f2318O = true;
        com.bumptech.glide.load.data.e eVar = this.f2319P;
        if (eVar != null) {
            eVar.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final p173w2.a d() {
        return p173w2.a.f30981G;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void e(g gVar, com.bumptech.glide.load.data.d dVar) throws Throwable {
        try {
            com.bumptech.glide.load.data.e eVarB = b();
            if (eVarB == null) {
                dVar.b(new IllegalArgumentException("Failed to build fetcher for: " + this.f2313J));
            } else {
                this.f2319P = eVarB;
                if (this.f2318O) {
                    cancel();
                } else {
                    eVarB.e(gVar, dVar);
                }
            }
        } catch (FileNotFoundException e8) {
            dVar.b(e8);
        }
    }
}
