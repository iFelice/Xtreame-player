package androidx.core.content;

import E.c;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.xmlpull.v1.XmlPullParserException;
import p148t.a;

/* JADX INFO: loaded from: classes.dex */
public class FileProvider extends ContentProvider {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final String[] f8995K = {"_display_name", "_size"};

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final File f8996L = new File(MqttTopic.TOPIC_LEVEL_SEPARATOR);

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final HashMap f8997M = new HashMap();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public String f8999H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public c f9000I;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f8998G = new Object();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f9001J = 0;

    public static String a(String str) {
        return (str.length() <= 0 || str.charAt(str.length() + (-1)) != '/') ? str : str.substring(0, str.length() - 1);
    }

    public static c c(int i8, Context context, String str) {
        c cVarD;
        HashMap map = f8997M;
        synchronized (map) {
            try {
                cVarD = (c) map.get(str);
                if (cVarD == null) {
                    try {
                        try {
                            cVarD = d(i8, context, str);
                            map.put(str, cVarD);
                        } catch (XmlPullParserException e8) {
                            throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e8);
                        }
                    } catch (IOException e9) {
                        throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e9);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return cVarD;
    }

    public static c d(int i8, Context context, String str) throws XmlPullParserException, IOException {
        c cVar = new c(str);
        ProviderInfo providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider(str, 128);
        if (providerInfoResolveContentProvider == null) {
            throw new IllegalArgumentException(a.c("Couldn't find meta-data for provider with authority ", str));
        }
        if (providerInfoResolveContentProvider.metaData == null && i8 != 0) {
            Bundle bundle = new Bundle(1);
            providerInfoResolveContentProvider.metaData = bundle;
            bundle.putInt("android.support.FILE_PROVIDER_PATHS", i8);
        }
        XmlResourceParser xmlResourceParserLoadXmlMetaData = providerInfoResolveContentProvider.loadXmlMetaData(context.getPackageManager(), "android.support.FILE_PROVIDER_PATHS");
        if (xmlResourceParserLoadXmlMetaData == null) {
            throw new IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data");
        }
        while (true) {
            int next = xmlResourceParserLoadXmlMetaData.next();
            if (next == 1) {
                return cVar;
            }
            if (next == 2) {
                String name = xmlResourceParserLoadXmlMetaData.getName();
                File externalStorageDirectory = null;
                String attributeValue = xmlResourceParserLoadXmlMetaData.getAttributeValue(null, "name");
                String attributeValue2 = xmlResourceParserLoadXmlMetaData.getAttributeValue(null, "path");
                if ("root-path".equals(name)) {
                    externalStorageDirectory = f8996L;
                } else if ("files-path".equals(name)) {
                    externalStorageDirectory = context.getFilesDir();
                } else if ("cache-path".equals(name)) {
                    externalStorageDirectory = context.getCacheDir();
                } else if ("external-path".equals(name)) {
                    externalStorageDirectory = Environment.getExternalStorageDirectory();
                } else if ("external-files-path".equals(name)) {
                    File[] externalFilesDirs = context.getExternalFilesDirs(null);
                    if (externalFilesDirs.length > 0) {
                        externalStorageDirectory = externalFilesDirs[0];
                    }
                } else if ("external-cache-path".equals(name)) {
                    File[] externalCacheDirs = context.getExternalCacheDirs();
                    if (externalCacheDirs.length > 0) {
                        externalStorageDirectory = externalCacheDirs[0];
                    }
                } else if ("external-media-path".equals(name)) {
                    File[] externalMediaDirs = context.getExternalMediaDirs();
                    if (externalMediaDirs.length > 0) {
                        externalStorageDirectory = externalMediaDirs[0];
                    }
                }
                if (externalStorageDirectory == null) {
                    continue;
                } else {
                    String str2 = new String[]{attributeValue2}[0];
                    if (str2 != null) {
                        externalStorageDirectory = new File(externalStorageDirectory, str2);
                    }
                    if (TextUtils.isEmpty(attributeValue)) {
                        throw new IllegalArgumentException("Name must not be empty");
                    }
                    try {
                        cVar.f2440b.put(attributeValue, externalStorageDirectory.getCanonicalFile());
                    } catch (IOException e8) {
                        throw new IllegalArgumentException("Failed to resolve canonical path for " + externalStorageDirectory, e8);
                    }
                }
            }
        }
    }

    @Override // android.content.ContentProvider
    public final void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.exported) {
            throw new SecurityException("Provider must not be exported");
        }
        if (!providerInfo.grantUriPermissions) {
            throw new SecurityException("Provider must grant uri permissions");
        }
        String str = providerInfo.authority.split(";")[0];
        synchronized (this.f8998G) {
            this.f8999H = str;
        }
        HashMap map = f8997M;
        synchronized (map) {
            map.remove(str);
        }
    }

    public final c b() {
        c cVar;
        synchronized (this.f8998G) {
            try {
                if (this.f8999H == null) {
                    throw new NullPointerException("mAuthority is null. Did you override attachInfo and did not call super.attachInfo()?");
                }
                if (this.f9000I == null) {
                    this.f9000I = c(this.f9001J, getContext(), this.f8999H);
                }
                cVar = this.f9000I;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cVar;
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        return b().b(uri).delete() ? 1 : 0;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        File fileB = b().b(uri);
        int iLastIndexOf = fileB.getName().lastIndexOf(46);
        if (iLastIndexOf < 0) {
            return "application/octet-stream";
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileB.getName().substring(iLastIndexOf + 1));
        return mimeTypeFromExtension != null ? mimeTypeFromExtension : "application/octet-stream";
    }

    @Override // android.content.ContentProvider
    public final String getTypeAnonymous(Uri uri) {
        return "application/octet-stream";
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("No external inserts");
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public final ParcelFileDescriptor openFile(Uri uri, String str) {
        int i8;
        File fileB = b().b(uri);
        if ("r".equals(str)) {
            i8 = 268435456;
        } else if ("w".equals(str) || "wt".equals(str)) {
            i8 = 738197504;
        } else if ("wa".equals(str)) {
            i8 = 704643072;
        } else if ("rw".equals(str)) {
            i8 = 939524096;
        } else {
            if (!"rwt".equals(str)) {
                throw new IllegalArgumentException(a.c("Invalid mode: ", str));
            }
            i8 = 1006632960;
        }
        return ParcelFileDescriptor.open(fileB, i8);
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i8;
        File fileB = b().b(uri);
        String queryParameter = uri.getQueryParameter("displayName");
        if (strArr == null) {
            strArr = f8995K;
        }
        String[] strArr3 = new String[strArr.length];
        Object[] objArr = new Object[strArr.length];
        int i9 = 0;
        for (String str3 : strArr) {
            if ("_display_name".equals(str3)) {
                strArr3[i9] = "_display_name";
                i8 = i9 + 1;
                objArr[i9] = queryParameter == null ? fileB.getName() : queryParameter;
            } else {
                if ("_size".equals(str3)) {
                    strArr3[i9] = "_size";
                    i8 = i9 + 1;
                    objArr[i9] = Long.valueOf(fileB.length());
                }
            }
            i9 = i8;
        }
        String[] strArr4 = new String[i9];
        System.arraycopy(strArr3, 0, strArr4, 0, i9);
        Object[] objArr2 = new Object[i9];
        System.arraycopy(objArr, 0, objArr2, 0, i9);
        MatrixCursor matrixCursor = new MatrixCursor(strArr4, 1);
        matrixCursor.addRow(objArr2);
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("No external updates");
    }
}
