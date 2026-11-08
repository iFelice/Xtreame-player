package K;

import J6.r;
import android.content.ContentProviderClient;
import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
import android.os.Trace;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p132r.l f4273a = new p132r.l(2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f4274b = new b(0);

    public static k a(Context context, List list) {
        r.b("FontProvider.getFontFamilyResult");
        try {
            ArrayList arrayList = new ArrayList();
            int i8 = 0;
            for (int i9 = 0; i9 < list.size(); i9++) {
                f fVar = (f) list.get(i9);
                ProviderInfo providerInfoB = b(context.getPackageManager(), fVar, context.getResources());
                if (providerInfoB == null) {
                    return new k();
                }
                arrayList.add(c(context, fVar, providerInfoB.authority));
            }
            return new k(i8, arrayList, i8);
        } finally {
            Trace.endSection();
        }
    }

    public static ProviderInfo b(PackageManager packageManager, f fVar, Resources resources) {
        r.b("FontProvider.getProvider");
        try {
            List listS = fVar.f4278d;
            String str = fVar.f4275a;
            String str2 = fVar.f4276b;
            if (listS == null) {
                listS = com.bumptech.glide.c.s(resources, 0);
            }
            d dVar = new d();
            dVar.f4270a = str;
            dVar.f4271b = str2;
            dVar.f4272c = listS;
            p132r.l lVar = f4273a;
            ProviderInfo providerInfo = (ProviderInfo) lVar.b(dVar);
            if (providerInfo != null) {
                Trace.endSection();
                return providerInfo;
            }
            ProviderInfo providerInfoResolveContentProvider = packageManager.resolveContentProvider(str, 0);
            if (providerInfoResolveContentProvider == null) {
                throw new PackageManager.NameNotFoundException("No package found for authority: " + str);
            }
            if (!providerInfoResolveContentProvider.packageName.equals(str2)) {
                throw new PackageManager.NameNotFoundException("Found content provider " + str + ", but package was not " + str2);
            }
            Signature[] signatureArr = packageManager.getPackageInfo(providerInfoResolveContentProvider.packageName, 64).signatures;
            ArrayList arrayList = new ArrayList();
            for (Signature signature : signatureArr) {
                arrayList.add(signature.toByteArray());
            }
            b bVar = f4274b;
            Collections.sort(arrayList, bVar);
            for (int i8 = 0; i8 < listS.size(); i8++) {
                ArrayList arrayList2 = new ArrayList((Collection) listS.get(i8));
                Collections.sort(arrayList2, bVar);
                if (arrayList.size() == arrayList2.size()) {
                    int i9 = 0;
                    while (true) {
                        if (i9 >= arrayList.size()) {
                            lVar.d(dVar, providerInfoResolveContentProvider);
                            Trace.endSection();
                            return providerInfoResolveContentProvider;
                        }
                        if (!Arrays.equals((byte[]) arrayList.get(i9), (byte[]) arrayList2.get(i9))) {
                            break;
                        }
                        i9++;
                    }
                }
            }
            Trace.endSection();
            return null;
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00d7 A[Catch: all -> 0x0104, TryCatch #2 {all -> 0x0104, blocks: (B:33:0x00d1, B:35:0x00d7, B:36:0x00f4, B:40:0x00fd, B:45:0x010f, B:48:0x011a, B:52:0x0134, B:55:0x0141, B:59:0x014c, B:50:0x0127), top: B:99:0x00d1 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:40:0x00fd A[Catch: all -> 0x0104, TryCatch #2 {all -> 0x0104, blocks: (B:33:0x00d1, B:35:0x00d7, B:36:0x00f4, B:40:0x00fd, B:45:0x010f, B:48:0x011a, B:52:0x0134, B:55:0x0141, B:59:0x014c, B:50:0x0127), top: B:99:0x00d1 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x010b  */
    /* JADX WARN: Code duplicated, block: B:45:0x010f A[Catch: all -> 0x0104, TryCatch #2 {all -> 0x0104, blocks: (B:33:0x00d1, B:35:0x00d7, B:36:0x00f4, B:40:0x00fd, B:45:0x010f, B:48:0x011a, B:52:0x0134, B:55:0x0141, B:59:0x014c, B:50:0x0127), top: B:99:0x00d1 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x0116  */
    /* JADX WARN: Code duplicated, block: B:48:0x011a A[Catch: all -> 0x0104, TryCatch #2 {all -> 0x0104, blocks: (B:33:0x00d1, B:35:0x00d7, B:36:0x00f4, B:40:0x00fd, B:45:0x010f, B:48:0x011a, B:52:0x0134, B:55:0x0141, B:59:0x014c, B:50:0x0127), top: B:99:0x00d1 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x0127 A[Catch: all -> 0x0104, TryCatch #2 {all -> 0x0104, blocks: (B:33:0x00d1, B:35:0x00d7, B:36:0x00f4, B:40:0x00fd, B:45:0x010f, B:48:0x011a, B:52:0x0134, B:55:0x0141, B:59:0x014c, B:50:0x0127), top: B:99:0x00d1 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x0134 A[Catch: all -> 0x0104, TryCatch #2 {all -> 0x0104, blocks: (B:33:0x00d1, B:35:0x00d7, B:36:0x00f4, B:40:0x00fd, B:45:0x010f, B:48:0x011a, B:52:0x0134, B:55:0x0141, B:59:0x014c, B:50:0x0127), top: B:99:0x00d1 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x013b  */
    /* JADX WARN: Code duplicated, block: B:58:0x014a  */
    /* JADX WARN: Code duplicated, block: B:61:0x0158  */
    /* JADX WARN: Code duplicated, block: B:63:0x015c A[Catch: all -> 0x0162, TRY_ENTER, TryCatch #1 {all -> 0x0162, blocks: (B:3:0x0017, B:5:0x004c, B:63:0x015c, B:67:0x0164, B:68:0x0168, B:70:0x016d, B:74:0x0178, B:73:0x0174, B:86:0x0193, B:87:0x0196, B:88:0x019a, B:90:0x019f, B:93:0x01a8, B:92:0x01a5, B:6:0x0052), top: B:98:0x0017 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x016b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:70:0x016d A[Catch: all -> 0x0162, TryCatch #1 {all -> 0x0162, blocks: (B:3:0x0017, B:5:0x004c, B:63:0x015c, B:67:0x0164, B:68:0x0168, B:70:0x016d, B:74:0x0178, B:73:0x0174, B:86:0x0193, B:87:0x0196, B:88:0x019a, B:90:0x019f, B:93:0x01a8, B:92:0x01a5, B:6:0x0052), top: B:98:0x0017 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0172 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x0174 A[Catch: all -> 0x0162, TryCatch #1 {all -> 0x0162, blocks: (B:3:0x0017, B:5:0x004c, B:63:0x015c, B:67:0x0164, B:68:0x0168, B:70:0x016d, B:74:0x0178, B:73:0x0174, B:86:0x0193, B:87:0x0196, B:88:0x019a, B:90:0x019f, B:93:0x01a8, B:92:0x01a5, B:6:0x0052), top: B:98:0x0017 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x00d1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r22v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v10 */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Type inference failed for: r22v4 */
    /* JADX WARN: Type inference failed for: r22v5 */
    /* JADX WARN: Type inference failed for: r22v6 */
    /* JADX WARN: Type inference failed for: r22v7 */
    /* JADX WARN: Type inference failed for: r22v8 */
    /* JADX WARN: Type inference failed for: r22v9 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14, types: [K.c] */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v5, types: [K.c] */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7, types: [K.c] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    public static l[] c(Context context, f fVar, String str) {
        int i8;
        Cursor cursor;
        int columnIndex;
        ArrayList arrayList;
        int columnIndex2;
        int columnIndex3;
        int columnIndex4;
        int columnIndex5;
        int columnIndex6;
        int i9;
        int i10;
        Uri uri;
        Uri uriWithAppendedId;
        int i11;
        boolean z7;
        int i12;
        ContentProviderClient contentProviderClient;
        r.b("FontProvider.query");
        try {
            ArrayList arrayList2 = new ArrayList();
            Uri uriBuild = new Uri.Builder().scheme("content").authority(str).build();
            Uri uriBuild2 = new Uri.Builder().scheme("content").authority(str).appendPath("file").build();
            ?? cVar = Build.VERSION.SDK_INT < 24 ? new c(context, uriBuild, 0) : new c(context, uriBuild, 1);
            Cursor cursorQuery = null;
            try {
                String[] strArr = {"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"};
                r.b("ContentQueryWrapper.query");
                try {
                    String[] strArr2 = {fVar.f4277c};
                    int i13 = cVar.f4268a;
                    Uri uri2 = uriBuild2;
                    ContentProviderClient contentProviderClient2 = cVar.f4269b;
                    try {
                        switch (i13) {
                            case 0:
                                context = cVar;
                                i8 = 1;
                                if (contentProviderClient2 != null) {
                                    try {
                                        cursorQuery = contentProviderClient2.query(uriBuild, strArr, "query = ?", strArr2, null, null);
                                        context = context;
                                    } catch (RemoteException e8) {
                                        Log.w("FontsProvider", "Unable to query the content provider", e8);
                                        context = context;
                                    }
                                }
                                cursor = cursorQuery;
                                try {
                                    Trace.endSection();
                                    if (cursor != null) {
                                        try {
                                            if (cursor.getCount() > 0) {
                                                columnIndex = cursor.getColumnIndex("result_code");
                                                arrayList = new ArrayList();
                                                columnIndex2 = cursor.getColumnIndex("_id");
                                                columnIndex3 = cursor.getColumnIndex("file_id");
                                                columnIndex4 = cursor.getColumnIndex("font_ttc_index");
                                                columnIndex5 = cursor.getColumnIndex("font_weight");
                                                columnIndex6 = cursor.getColumnIndex("font_italic");
                                                while (cursor.moveToNext()) {
                                                    if (columnIndex != -1) {
                                                        i9 = cursor.getInt(columnIndex);
                                                    } else {
                                                        i9 = 0;
                                                    }
                                                    if (columnIndex4 != -1) {
                                                        i10 = cursor.getInt(columnIndex4);
                                                    } else {
                                                        i10 = 0;
                                                    }
                                                    if (columnIndex3 == -1) {
                                                        uriWithAppendedId = ContentUris.withAppendedId(uriBuild, cursor.getLong(columnIndex2));
                                                        uri = uri2;
                                                    } else {
                                                        uri = uri2;
                                                        uriWithAppendedId = ContentUris.withAppendedId(uri, cursor.getLong(columnIndex3));
                                                    }
                                                    Uri uri3 = uriWithAppendedId;
                                                    if (columnIndex5 != -1) {
                                                        i11 = cursor.getInt(columnIndex5);
                                                    } else {
                                                        i11 = 400;
                                                    }
                                                    if (columnIndex6 == -1 && cursor.getInt(columnIndex6) == i8) {
                                                        z7 = true;
                                                    } else {
                                                        z7 = false;
                                                    }
                                                    arrayList.add(new l(uri3, i10, i11, z7, i9));
                                                    uri2 = uri;
                                                }
                                            } else {
                                                arrayList = arrayList2;
                                            }
                                            break;
                                        } catch (Throwable th) {
                                            th = th;
                                            cVar = context;
                                            cursorQuery = cursor;
                                            if (cursorQuery != null) {
                                                cursorQuery.close();
                                            }
                                            int i14 = cVar.f4268a;
                                            ContentProviderClient contentProviderClient3 = cVar.f4269b;
                                            switch (i14) {
                                                case 0:
                                                    if (contentProviderClient3 != null) {
                                                        contentProviderClient3.release();
                                                    }
                                                    throw th;
                                                default:
                                                    if (contentProviderClient3 != null) {
                                                        contentProviderClient3.release();
                                                    }
                                                    throw th;
                                            }
                                        }
                                    } else {
                                        arrayList = arrayList2;
                                    }
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    ?? r8 = context;
                                    i12 = r8.f4268a;
                                    contentProviderClient = r8.f4269b;
                                    switch (i12) {
                                        case 0:
                                            if (contentProviderClient != null) {
                                                contentProviderClient.release();
                                            }
                                            break;
                                        default:
                                            if (contentProviderClient != null) {
                                                contentProviderClient.release();
                                            }
                                            break;
                                    }
                                    l[] lVarArr = (l[]) arrayList.toArray(new l[0]);
                                    Trace.endSection();
                                    return lVarArr;
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                                break;
                            default:
                                if (contentProviderClient2 != null) {
                                    context = cVar;
                                    i8 = 1;
                                    try {
                                        cursorQuery = contentProviderClient2.query(uriBuild, strArr, "query = ?", strArr2, null, null);
                                        context = context;
                                    } catch (RemoteException e9) {
                                        Log.w("FontsProvider", "Unable to query the content provider", e9);
                                        context = context;
                                    }
                                    break;
                                } else {
                                    context = cVar;
                                    i8 = 1;
                                }
                                cursor = cursorQuery;
                                Trace.endSection();
                                if (cursor != null) {
                                    if (cursor.getCount() > 0) {
                                        columnIndex = cursor.getColumnIndex("result_code");
                                        arrayList = new ArrayList();
                                        columnIndex2 = cursor.getColumnIndex("_id");
                                        columnIndex3 = cursor.getColumnIndex("file_id");
                                        columnIndex4 = cursor.getColumnIndex("font_ttc_index");
                                        columnIndex5 = cursor.getColumnIndex("font_weight");
                                        columnIndex6 = cursor.getColumnIndex("font_italic");
                                        while (cursor.moveToNext()) {
                                            if (columnIndex != -1) {
                                                i9 = cursor.getInt(columnIndex);
                                            } else {
                                                i9 = 0;
                                            }
                                            if (columnIndex4 != -1) {
                                                i10 = cursor.getInt(columnIndex4);
                                            } else {
                                                i10 = 0;
                                            }
                                            if (columnIndex3 == -1) {
                                                uriWithAppendedId = ContentUris.withAppendedId(uriBuild, cursor.getLong(columnIndex2));
                                                uri = uri2;
                                            } else {
                                                uri = uri2;
                                                uriWithAppendedId = ContentUris.withAppendedId(uri, cursor.getLong(columnIndex3));
                                            }
                                            Uri uri4 = uriWithAppendedId;
                                            if (columnIndex5 != -1) {
                                                i11 = cursor.getInt(columnIndex5);
                                            } else {
                                                i11 = 400;
                                            }
                                            if (columnIndex6 == -1) {
                                                z7 = false;
                                            } else {
                                                z7 = false;
                                            }
                                            arrayList.add(new l(uri4, i10, i11, z7, i9));
                                            uri2 = uri;
                                        }
                                    } else {
                                        arrayList = arrayList2;
                                    }
                                    break;
                                } else {
                                    arrayList = arrayList2;
                                }
                                if (cursor != null) {
                                    cursor.close();
                                }
                                ?? r9 = context;
                                i12 = r9.f4268a;
                                contentProviderClient = r9.f4269b;
                                switch (i12) {
                                    case 0:
                                        if (contentProviderClient != null) {
                                            contentProviderClient.release();
                                        }
                                        break;
                                    default:
                                        if (contentProviderClient != null) {
                                            contentProviderClient.release();
                                        }
                                        break;
                                }
                                l[] lVarArr2 = (l[]) arrayList.toArray(new l[0]);
                                Trace.endSection();
                                return lVarArr2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        cVar = context;
                        Trace.endSection();
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            Trace.endSection();
            throw th6;
        }
    }
}
