package p181x2;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;

/* JADX INFO: loaded from: classes.dex */
public final class b implements d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f31194b = {"_data"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ContentResolver f31195a;

    public b(ContentResolver contentResolver) {
        this.f31195a = contentResolver;
    }

    @Override // p181x2.d
    public final Cursor a(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        return this.f31195a.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f31194b, "kind = 1 AND video_id = ?", new String[]{lastPathSegment}, null);
    }
}
