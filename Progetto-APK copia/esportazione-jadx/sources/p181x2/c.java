package p181x2;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.b;
import com.bumptech.glide.g;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.data.e;
import com.bumptech.glide.load.data.j;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import p173w2.a;

/* JADX INFO: loaded from: classes.dex */
public final class c implements e {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Uri f31196G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final e f31197H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public InputStream f31198I;

    public c(Uri uri, e eVar) {
        this.f31196G = uri;
        this.f31197H = eVar;
    }

    public static c b(Context context, Uri uri, d dVar) {
        return new c(uri, new e(b.a(context).f11499I.b().f(), dVar, b.a(context).f11500J, context.getContentResolver()));
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void c() {
        InputStream inputStream = this.f31198I;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final a d() {
        return a.f30981G;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void e(g gVar, d dVar) throws Throwable {
        try {
            InputStream inputStreamF = f();
            this.f31198I = inputStreamF;
            dVar.f(inputStreamF);
        } catch (FileNotFoundException e8) {
            if (Log.isLoggable("MediaStoreThumbFetcher", 3)) {
                Log.d("MediaStoreThumbFetcher", "Failed to find thumbnail file", e8);
            }
            dVar.b(e8);
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0056  */
    /* JADX WARN: Code duplicated, block: B:28:0x0058  */
    /* JADX WARN: Code duplicated, block: B:30:0x0063  */
    /* JADX WARN: Code duplicated, block: B:40:0x009c  */
    /* JADX WARN: Code duplicated, block: B:61:0x00da  */
    /* JADX WARN: Code duplicated, block: B:63:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:66:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:79:0x00ac A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:83:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 6, insn: 0x0025: MOVE (r5 I:??[OBJECT, ARRAY]) = (r6 I:??[OBJECT, ARRAY]) (LINE:38), block:B:10:0x0025 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.IOException, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r6v1 */
    public final InputStream f() throws Throwable {
        Cursor cursorA;
        ?? r7;
        String string;
        boolean zIsEmpty;
        ContentResolver contentResolver;
        File file;
        InputStream inputStreamOpenInputStream;
        int iJ;
        Uri uri = this.f31196G;
        e eVar = this.f31197H;
        eVar.getClass();
        ?? r8 = 0;
        InputStream inputStreamOpenInputStream2 = null;
        try {
            try {
                cursorA = eVar.f31199a.a(uri);
                if (cursorA != null) {
                    try {
                        if (cursorA.moveToFirst()) {
                            string = cursorA.getString(0);
                            cursorA.close();
                        }
                    } catch (SecurityException e8) {
                        e = e8;
                        if (Log.isLoggable("ThumbStreamOpener", 3)) {
                            Log.d("ThumbStreamOpener", "Failed to query for thumbnail for Uri: " + uri, e);
                        }
                        if (cursorA != null) {
                        }
                        string = null;
                        zIsEmpty = TextUtils.isEmpty(string);
                        contentResolver = eVar.f31201c;
                        if (zIsEmpty) {
                            inputStreamOpenInputStream = null;
                        } else {
                            file = new File(string);
                            if (file.exists()) {
                                inputStreamOpenInputStream = null;
                            } else {
                                inputStreamOpenInputStream = null;
                            }
                        }
                        if (inputStreamOpenInputStream != null) {
                            try {
                                try {
                                    inputStreamOpenInputStream2 = contentResolver.openInputStream(uri);
                                    iJ = Q3.b.j(eVar.f31200b, inputStreamOpenInputStream2, eVar.f31202d);
                                    if (inputStreamOpenInputStream2 != null) {
                                        try {
                                            inputStreamOpenInputStream2.close();
                                        } catch (IOException unused) {
                                        }
                                    }
                                } catch (IOException | NullPointerException e9) {
                                    if (Log.isLoggable("ThumbStreamOpener", 3)) {
                                        Log.d("ThumbStreamOpener", "Failed to open uri: " + uri, e9);
                                    }
                                    if (inputStreamOpenInputStream2 != null) {
                                        try {
                                            inputStreamOpenInputStream2.close();
                                        } catch (IOException unused2) {
                                        }
                                    }
                                    iJ = -1;
                                }
                            } catch (Throwable th) {
                                if (0 != 0) {
                                    try {
                                        r8.close();
                                    } catch (IOException unused3) {
                                    }
                                }
                                throw th;
                            }
                        } else {
                            iJ = -1;
                        }
                        if (iJ != -1) {
                            return new j(iJ, inputStreamOpenInputStream);
                        }
                        return inputStreamOpenInputStream;
                    }
                    zIsEmpty = TextUtils.isEmpty(string);
                    contentResolver = eVar.f31201c;
                    if (zIsEmpty) {
                        inputStreamOpenInputStream = null;
                    } else {
                        file = new File(string);
                        if (file.exists() || 0 >= file.length()) {
                            inputStreamOpenInputStream = null;
                        } else {
                            Uri uriFromFile = Uri.fromFile(file);
                            try {
                                inputStreamOpenInputStream = contentResolver.openInputStream(uriFromFile);
                            } catch (NullPointerException e10) {
                                throw ((FileNotFoundException) new FileNotFoundException("NPE opening uri: " + uri + " -> " + uriFromFile).initCause(e10));
                            }
                        }
                    }
                    if (inputStreamOpenInputStream != null) {
                        inputStreamOpenInputStream2 = contentResolver.openInputStream(uri);
                        iJ = Q3.b.j(eVar.f31200b, inputStreamOpenInputStream2, eVar.f31202d);
                        if (inputStreamOpenInputStream2 != null) {
                            inputStreamOpenInputStream2.close();
                        }
                    } else {
                        iJ = -1;
                    }
                    if (iJ != -1) {
                        return new j(iJ, inputStreamOpenInputStream);
                    }
                    return inputStreamOpenInputStream;
                }
                if (cursorA != null) {
                    cursorA.close();
                }
            } catch (SecurityException e11) {
                e = e11;
                cursorA = null;
            } catch (Throwable th2) {
                th = th2;
                if (r8 != 0) {
                    r8.close();
                }
                throw th;
            }
            string = null;
            zIsEmpty = TextUtils.isEmpty(string);
            contentResolver = eVar.f31201c;
            if (zIsEmpty) {
                inputStreamOpenInputStream = null;
            } else {
                file = new File(string);
                if (file.exists()) {
                    inputStreamOpenInputStream = null;
                } else {
                    inputStreamOpenInputStream = null;
                }
            }
            if (inputStreamOpenInputStream != null) {
                inputStreamOpenInputStream2 = contentResolver.openInputStream(uri);
                iJ = Q3.b.j(eVar.f31200b, inputStreamOpenInputStream2, eVar.f31202d);
                if (inputStreamOpenInputStream2 != null) {
                    inputStreamOpenInputStream2.close();
                }
            } else {
                iJ = -1;
            }
            if (iJ != -1) {
                return new j(iJ, inputStreamOpenInputStream);
            }
            return inputStreamOpenInputStream;
        } catch (Throwable th3) {
            th = th3;
            r8 = r7;
            if (r8 != 0) {
                r8.close();
            }
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
    }
}
