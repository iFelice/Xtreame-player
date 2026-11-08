package p181x2;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;

/* JADX INFO: loaded from: classes.dex */
public final class a implements d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f31192b = {"_data"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ContentResolver f31193a;

    public a(ContentResolver contentResolver) {
        this.f31193a = contentResolver;
    }

    @Override // p181x2.d
    public final Cursor a(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        return this.f31193a.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f31192b, "kind = 1 AND image_id = ?", new String[]{lastPathSegment}, null);
    }
}
