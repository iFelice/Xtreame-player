package C2;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import java.io.File;
import java.io.FileNotFoundException;

/* JADX INFO: loaded from: classes.dex */
public final class y implements com.bumptech.glide.load.data.e {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final String[] f1423I = {"_data"};

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f1424G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Uri f1425H;

    public y(Context context, Uri uri) {
        this.f1424G = context;
        this.f1425H = uri;
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        return File.class;
    }

    @Override // com.bumptech.glide.load.data.e
    public final p173w2.a d() {
        return p173w2.a.f30981G;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void e(com.bumptech.glide.g gVar, com.bumptech.glide.load.data.d dVar) {
        Cursor cursorQuery = this.f1424G.getContentResolver().query(this.f1425H, f1423I, null, null, null);
        String string = null;
        if (cursorQuery != null) {
            try {
                string = cursorQuery.moveToFirst() ? cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data")) : null;
                cursorQuery.close();
            } catch (Throwable th) {
                cursorQuery.close();
                throw th;
            }
        }
        if (!TextUtils.isEmpty(string)) {
            dVar.f(new File(string));
            return;
        }
        dVar.b(new FileNotFoundException("Failed to find file path for: " + this.f1425H));
    }

    @Override // com.bumptech.glide.load.data.e
    public final void c() {
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
    }
}
