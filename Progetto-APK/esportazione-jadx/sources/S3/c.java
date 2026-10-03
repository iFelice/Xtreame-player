package S3;

import F2.B;
import F2.G;
import K3.X;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import androidx.leanback.widget.C0484j;
import com.google.android.gms.dynamite.DynamiteModule$DynamiteLoaderClassLoader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Boolean f6418e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static String f6419f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static boolean f6420g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f6421h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static Boolean f6422i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static i f6426m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static j f6427n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f6428a;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final ThreadLocal f6423j = new ThreadLocal();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final X f6424k = new X(1);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final G f6425l = new G(29);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final g f6415b = new g(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final g f6416c = new g(3);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final g f6417d = new g(4);

    public c(Context context) {
        this.f6428a = context;
    }

    public static int a(Context context, String str) {
        try {
            Class<?> clsLoadClass = context.getApplicationContext().getClassLoader().loadClass("com.google.android.gms.dynamite.descriptors." + str + ".ModuleDescriptor");
            Field declaredField = clsLoadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = clsLoadClass.getDeclaredField("MODULE_VERSION");
            if (U4.a.c(declaredField.get(null), str)) {
                return declaredField2.getInt(null);
            }
            Log.e("DynamiteModule", "Module descriptor id '" + String.valueOf(declaredField.get(null)) + "' didn't match expected id '" + str + "'");
            return 0;
        } catch (ClassNotFoundException unused) {
            Log.w("DynamiteModule", "Local module descriptor class for " + str + " not found.");
            return 0;
        } catch (Exception e8) {
            Log.e("DynamiteModule", "Failed to load module descriptor class: ".concat(String.valueOf(e8.getMessage())));
            return 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0204 A[Catch: all -> 0x0202, TRY_ENTER, TryCatch #1 {, blocks: (B:31:0x00b7, B:33:0x00bd, B:34:0x00bf, B:102:0x0204, B:103:0x020b), top: B:153:0x00b7 }] */
    /* JADX WARN: Code duplicated, block: B:120:0x0265  */
    /* JADX WARN: Code duplicated, block: B:122:0x026d  */
    /* JADX WARN: Code duplicated, block: B:125:0x0277  */
    /* JADX WARN: Code duplicated, block: B:133:0x0290 A[Catch: all -> 0x028e, TryCatch #8 {all -> 0x028e, blocks: (B:129:0x0286, B:130:0x028d, B:133:0x0290, B:134:0x02a7, B:135:0x02a8, B:136:0x02d4), top: B:161:0x007c }] */
    /* JADX WARN: Code duplicated, block: B:143:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:144:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:147:0x02ef  */
    /* JADX WARN: Code duplicated, block: B:153:0x00b7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:162:0x00e5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:24:0x009d A[Catch: all -> 0x008d, TRY_LEAVE, TryCatch #7 {all -> 0x008d, blocks: (B:9:0x0053, B:13:0x0081, B:21:0x0097, B:24:0x009d, B:28:0x00b2, B:106:0x020e, B:107:0x0218, B:110:0x021b, B:111:0x021c, B:112:0x0223, B:113:0x0224, B:115:0x0242, B:117:0x0251), top: B:160:0x0053, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x00af A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:27:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:33:0x00bd A[Catch: all -> 0x0202, TryCatch #1 {, blocks: (B:31:0x00b7, B:33:0x00bd, B:34:0x00bf, B:102:0x0204, B:103:0x020b), top: B:153:0x00b7 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00c2 A[Catch: all -> 0x0125, a -> 0x0128, RemoteException -> 0x012b, TRY_ENTER, TryCatch #10 {a -> 0x0128, RemoteException -> 0x012b, all -> 0x0125, blocks: (B:30:0x00b6, B:36:0x00c2, B:38:0x00c9, B:39:0x00e4, B:43:0x00ea, B:45:0x00f2, B:47:0x00f6, B:48:0x0104, B:55:0x010f, B:63:0x0143, B:65:0x014b, B:67:0x0153, B:68:0x015a, B:62:0x012e, B:71:0x015d, B:72:0x015e, B:73:0x0165, B:74:0x0166, B:75:0x016d, B:78:0x0170, B:79:0x0171, B:81:0x0190, B:83:0x0197, B:85:0x019f, B:91:0x01db, B:93:0x01e1, B:94:0x01ea, B:95:0x01f1, B:86:0x01b0, B:87:0x01b7, B:89:0x01ba, B:90:0x01cb, B:96:0x01f2, B:97:0x01f9, B:98:0x01fa, B:99:0x0201, B:105:0x020d), top: B:164:0x00b6 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00c9 A[Catch: all -> 0x0125, a -> 0x0128, RemoteException -> 0x012b, TryCatch #10 {a -> 0x0128, RemoteException -> 0x012b, all -> 0x0125, blocks: (B:30:0x00b6, B:36:0x00c2, B:38:0x00c9, B:39:0x00e4, B:43:0x00ea, B:45:0x00f2, B:47:0x00f6, B:48:0x0104, B:55:0x010f, B:63:0x0143, B:65:0x014b, B:67:0x0153, B:68:0x015a, B:62:0x012e, B:71:0x015d, B:72:0x015e, B:73:0x0165, B:74:0x0166, B:75:0x016d, B:78:0x0170, B:79:0x0171, B:81:0x0190, B:83:0x0197, B:85:0x019f, B:91:0x01db, B:93:0x01e1, B:94:0x01ea, B:95:0x01f1, B:86:0x01b0, B:87:0x01b7, B:89:0x01ba, B:90:0x01cb, B:96:0x01f2, B:97:0x01f9, B:98:0x01fa, B:99:0x0201, B:105:0x020d), top: B:164:0x00b6 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00ea A[Catch: all -> 0x0125, a -> 0x0128, RemoteException -> 0x012b, TRY_ENTER, TryCatch #10 {a -> 0x0128, RemoteException -> 0x012b, all -> 0x0125, blocks: (B:30:0x00b6, B:36:0x00c2, B:38:0x00c9, B:39:0x00e4, B:43:0x00ea, B:45:0x00f2, B:47:0x00f6, B:48:0x0104, B:55:0x010f, B:63:0x0143, B:65:0x014b, B:67:0x0153, B:68:0x015a, B:62:0x012e, B:71:0x015d, B:72:0x015e, B:73:0x0165, B:74:0x0166, B:75:0x016d, B:78:0x0170, B:79:0x0171, B:81:0x0190, B:83:0x0197, B:85:0x019f, B:91:0x01db, B:93:0x01e1, B:94:0x01ea, B:95:0x01f1, B:86:0x01b0, B:87:0x01b7, B:89:0x01ba, B:90:0x01cb, B:96:0x01f2, B:97:0x01f9, B:98:0x01fa, B:99:0x0201, B:105:0x020d), top: B:164:0x00b6 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0166 A[Catch: all -> 0x0125, a -> 0x0128, RemoteException -> 0x012b, TryCatch #10 {a -> 0x0128, RemoteException -> 0x012b, all -> 0x0125, blocks: (B:30:0x00b6, B:36:0x00c2, B:38:0x00c9, B:39:0x00e4, B:43:0x00ea, B:45:0x00f2, B:47:0x00f6, B:48:0x0104, B:55:0x010f, B:63:0x0143, B:65:0x014b, B:67:0x0153, B:68:0x015a, B:62:0x012e, B:71:0x015d, B:72:0x015e, B:73:0x0165, B:74:0x0166, B:75:0x016d, B:78:0x0170, B:79:0x0171, B:81:0x0190, B:83:0x0197, B:85:0x019f, B:91:0x01db, B:93:0x01e1, B:94:0x01ea, B:95:0x01f1, B:86:0x01b0, B:87:0x01b7, B:89:0x01ba, B:90:0x01cb, B:96:0x01f2, B:97:0x01f9, B:98:0x01fa, B:99:0x0201, B:105:0x020d), top: B:164:0x00b6 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0171 A[Catch: all -> 0x0125, a -> 0x0128, RemoteException -> 0x012b, TryCatch #10 {a -> 0x0128, RemoteException -> 0x012b, all -> 0x0125, blocks: (B:30:0x00b6, B:36:0x00c2, B:38:0x00c9, B:39:0x00e4, B:43:0x00ea, B:45:0x00f2, B:47:0x00f6, B:48:0x0104, B:55:0x010f, B:63:0x0143, B:65:0x014b, B:67:0x0153, B:68:0x015a, B:62:0x012e, B:71:0x015d, B:72:0x015e, B:73:0x0165, B:74:0x0166, B:75:0x016d, B:78:0x0170, B:79:0x0171, B:81:0x0190, B:83:0x0197, B:85:0x019f, B:91:0x01db, B:93:0x01e1, B:94:0x01ea, B:95:0x01f1, B:86:0x01b0, B:87:0x01b7, B:89:0x01ba, B:90:0x01cb, B:96:0x01f2, B:97:0x01f9, B:98:0x01fa, B:99:0x0201, B:105:0x020d), top: B:164:0x00b6 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x0190 A[Catch: all -> 0x0125, a -> 0x0128, RemoteException -> 0x012b, TryCatch #10 {a -> 0x0128, RemoteException -> 0x012b, all -> 0x0125, blocks: (B:30:0x00b6, B:36:0x00c2, B:38:0x00c9, B:39:0x00e4, B:43:0x00ea, B:45:0x00f2, B:47:0x00f6, B:48:0x0104, B:55:0x010f, B:63:0x0143, B:65:0x014b, B:67:0x0153, B:68:0x015a, B:62:0x012e, B:71:0x015d, B:72:0x015e, B:73:0x0165, B:74:0x0166, B:75:0x016d, B:78:0x0170, B:79:0x0171, B:81:0x0190, B:83:0x0197, B:85:0x019f, B:91:0x01db, B:93:0x01e1, B:94:0x01ea, B:95:0x01f1, B:86:0x01b0, B:87:0x01b7, B:89:0x01ba, B:90:0x01cb, B:96:0x01f2, B:97:0x01f9, B:98:0x01fa, B:99:0x0201, B:105:0x020d), top: B:164:0x00b6 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0197 A[Catch: all -> 0x0125, a -> 0x0128, RemoteException -> 0x012b, TryCatch #10 {a -> 0x0128, RemoteException -> 0x012b, all -> 0x0125, blocks: (B:30:0x00b6, B:36:0x00c2, B:38:0x00c9, B:39:0x00e4, B:43:0x00ea, B:45:0x00f2, B:47:0x00f6, B:48:0x0104, B:55:0x010f, B:63:0x0143, B:65:0x014b, B:67:0x0153, B:68:0x015a, B:62:0x012e, B:71:0x015d, B:72:0x015e, B:73:0x0165, B:74:0x0166, B:75:0x016d, B:78:0x0170, B:79:0x0171, B:81:0x0190, B:83:0x0197, B:85:0x019f, B:91:0x01db, B:93:0x01e1, B:94:0x01ea, B:95:0x01f1, B:86:0x01b0, B:87:0x01b7, B:89:0x01ba, B:90:0x01cb, B:96:0x01f2, B:97:0x01f9, B:98:0x01fa, B:99:0x0201, B:105:0x020d), top: B:164:0x00b6 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x019f A[Catch: all -> 0x0125, a -> 0x0128, RemoteException -> 0x012b, TryCatch #10 {a -> 0x0128, RemoteException -> 0x012b, all -> 0x0125, blocks: (B:30:0x00b6, B:36:0x00c2, B:38:0x00c9, B:39:0x00e4, B:43:0x00ea, B:45:0x00f2, B:47:0x00f6, B:48:0x0104, B:55:0x010f, B:63:0x0143, B:65:0x014b, B:67:0x0153, B:68:0x015a, B:62:0x012e, B:71:0x015d, B:72:0x015e, B:73:0x0165, B:74:0x0166, B:75:0x016d, B:78:0x0170, B:79:0x0171, B:81:0x0190, B:83:0x0197, B:85:0x019f, B:91:0x01db, B:93:0x01e1, B:94:0x01ea, B:95:0x01f1, B:86:0x01b0, B:87:0x01b7, B:89:0x01ba, B:90:0x01cb, B:96:0x01f2, B:97:0x01f9, B:98:0x01fa, B:99:0x0201, B:105:0x020d), top: B:164:0x00b6 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x01b0 A[Catch: all -> 0x0125, a -> 0x0128, RemoteException -> 0x012b, TryCatch #10 {a -> 0x0128, RemoteException -> 0x012b, all -> 0x0125, blocks: (B:30:0x00b6, B:36:0x00c2, B:38:0x00c9, B:39:0x00e4, B:43:0x00ea, B:45:0x00f2, B:47:0x00f6, B:48:0x0104, B:55:0x010f, B:63:0x0143, B:65:0x014b, B:67:0x0153, B:68:0x015a, B:62:0x012e, B:71:0x015d, B:72:0x015e, B:73:0x0165, B:74:0x0166, B:75:0x016d, B:78:0x0170, B:79:0x0171, B:81:0x0190, B:83:0x0197, B:85:0x019f, B:91:0x01db, B:93:0x01e1, B:94:0x01ea, B:95:0x01f1, B:86:0x01b0, B:87:0x01b7, B:89:0x01ba, B:90:0x01cb, B:96:0x01f2, B:97:0x01f9, B:98:0x01fa, B:99:0x0201, B:105:0x020d), top: B:164:0x00b6 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x01b8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:89:0x01ba A[Catch: all -> 0x0125, a -> 0x0128, RemoteException -> 0x012b, TryCatch #10 {a -> 0x0128, RemoteException -> 0x012b, all -> 0x0125, blocks: (B:30:0x00b6, B:36:0x00c2, B:38:0x00c9, B:39:0x00e4, B:43:0x00ea, B:45:0x00f2, B:47:0x00f6, B:48:0x0104, B:55:0x010f, B:63:0x0143, B:65:0x014b, B:67:0x0153, B:68:0x015a, B:62:0x012e, B:71:0x015d, B:72:0x015e, B:73:0x0165, B:74:0x0166, B:75:0x016d, B:78:0x0170, B:79:0x0171, B:81:0x0190, B:83:0x0197, B:85:0x019f, B:91:0x01db, B:93:0x01e1, B:94:0x01ea, B:95:0x01f1, B:86:0x01b0, B:87:0x01b7, B:89:0x01ba, B:90:0x01cb, B:96:0x01f2, B:97:0x01f9, B:98:0x01fa, B:99:0x0201, B:105:0x020d), top: B:164:0x00b6 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x01cb A[Catch: all -> 0x0125, a -> 0x0128, RemoteException -> 0x012b, TryCatch #10 {a -> 0x0128, RemoteException -> 0x012b, all -> 0x0125, blocks: (B:30:0x00b6, B:36:0x00c2, B:38:0x00c9, B:39:0x00e4, B:43:0x00ea, B:45:0x00f2, B:47:0x00f6, B:48:0x0104, B:55:0x010f, B:63:0x0143, B:65:0x014b, B:67:0x0153, B:68:0x015a, B:62:0x012e, B:71:0x015d, B:72:0x015e, B:73:0x0165, B:74:0x0166, B:75:0x016d, B:78:0x0170, B:79:0x0171, B:81:0x0190, B:83:0x0197, B:85:0x019f, B:91:0x01db, B:93:0x01e1, B:94:0x01ea, B:95:0x01f1, B:86:0x01b0, B:87:0x01b7, B:89:0x01ba, B:90:0x01cb, B:96:0x01f2, B:97:0x01f9, B:98:0x01fa, B:99:0x0201, B:105:0x020d), top: B:164:0x00b6 }] */
    /* JADX WARN: Code duplicated, block: B:93:0x01e1 A[Catch: all -> 0x0125, a -> 0x0128, RemoteException -> 0x012b, TryCatch #10 {a -> 0x0128, RemoteException -> 0x012b, all -> 0x0125, blocks: (B:30:0x00b6, B:36:0x00c2, B:38:0x00c9, B:39:0x00e4, B:43:0x00ea, B:45:0x00f2, B:47:0x00f6, B:48:0x0104, B:55:0x010f, B:63:0x0143, B:65:0x014b, B:67:0x0153, B:68:0x015a, B:62:0x012e, B:71:0x015d, B:72:0x015e, B:73:0x0165, B:74:0x0166, B:75:0x016d, B:78:0x0170, B:79:0x0171, B:81:0x0190, B:83:0x0197, B:85:0x019f, B:91:0x01db, B:93:0x01e1, B:94:0x01ea, B:95:0x01f1, B:86:0x01b0, B:87:0x01b7, B:89:0x01ba, B:90:0x01cb, B:96:0x01f2, B:97:0x01f9, B:98:0x01fa, B:99:0x0201, B:105:0x020d), top: B:164:0x00b6 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x01ea A[Catch: all -> 0x0125, a -> 0x0128, RemoteException -> 0x012b, TryCatch #10 {a -> 0x0128, RemoteException -> 0x012b, all -> 0x0125, blocks: (B:30:0x00b6, B:36:0x00c2, B:38:0x00c9, B:39:0x00e4, B:43:0x00ea, B:45:0x00f2, B:47:0x00f6, B:48:0x0104, B:55:0x010f, B:63:0x0143, B:65:0x014b, B:67:0x0153, B:68:0x015a, B:62:0x012e, B:71:0x015d, B:72:0x015e, B:73:0x0165, B:74:0x0166, B:75:0x016d, B:78:0x0170, B:79:0x0171, B:81:0x0190, B:83:0x0197, B:85:0x019f, B:91:0x01db, B:93:0x01e1, B:94:0x01ea, B:95:0x01f1, B:86:0x01b0, B:87:0x01b7, B:89:0x01ba, B:90:0x01cb, B:96:0x01f2, B:97:0x01f9, B:98:0x01fa, B:99:0x0201, B:105:0x020d), top: B:164:0x00b6 }] */
    /* JADX WARN: Code duplicated, block: B:96:0x01f2 A[Catch: all -> 0x0125, a -> 0x0128, RemoteException -> 0x012b, TryCatch #10 {a -> 0x0128, RemoteException -> 0x012b, all -> 0x0125, blocks: (B:30:0x00b6, B:36:0x00c2, B:38:0x00c9, B:39:0x00e4, B:43:0x00ea, B:45:0x00f2, B:47:0x00f6, B:48:0x0104, B:55:0x010f, B:63:0x0143, B:65:0x014b, B:67:0x0153, B:68:0x015a, B:62:0x012e, B:71:0x015d, B:72:0x015e, B:73:0x0165, B:74:0x0166, B:75:0x016d, B:78:0x0170, B:79:0x0171, B:81:0x0190, B:83:0x0197, B:85:0x019f, B:91:0x01db, B:93:0x01e1, B:94:0x01ea, B:95:0x01f1, B:86:0x01b0, B:87:0x01b7, B:89:0x01ba, B:90:0x01cb, B:96:0x01f2, B:97:0x01f9, B:98:0x01fa, B:99:0x0201, B:105:0x020d), top: B:164:0x00b6 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x01fa A[Catch: all -> 0x0125, a -> 0x0128, RemoteException -> 0x012b, TryCatch #10 {a -> 0x0128, RemoteException -> 0x012b, all -> 0x0125, blocks: (B:30:0x00b6, B:36:0x00c2, B:38:0x00c9, B:39:0x00e4, B:43:0x00ea, B:45:0x00f2, B:47:0x00f6, B:48:0x0104, B:55:0x010f, B:63:0x0143, B:65:0x014b, B:67:0x0153, B:68:0x015a, B:62:0x012e, B:71:0x015d, B:72:0x015e, B:73:0x0165, B:74:0x0166, B:75:0x016d, B:78:0x0170, B:79:0x0171, B:81:0x0190, B:83:0x0197, B:85:0x019f, B:91:0x01db, B:93:0x01e1, B:94:0x01ea, B:95:0x01f1, B:86:0x01b0, B:87:0x01b7, B:89:0x01ba, B:90:0x01cb, B:96:0x01f2, B:97:0x01f9, B:98:0x01fa, B:99:0x0201, B:105:0x020d), top: B:164:0x00b6 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:133:0x0290, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:38:0x00c9, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:79:0x0171, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v3, types: [S3.h] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    public static c c(Context context, g gVar, String str) throws Throwable {
        ?? r7;
        ?? r10;
        Cursor cursor;
        c cVar;
        int i8;
        Boolean bool;
        i iVarH;
        int iJ;
        R3.a aVarZ3;
        Object objV0;
        c cVar2;
        h hVar;
        j jVar;
        h hVar2;
        boolean z7;
        R3.a aVarZ4;
        Cursor cursor2;
        Context context2 = context;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            throw new a("null application Context");
        }
        ThreadLocal threadLocal = f6423j;
        h hVar3 = (h) threadLocal.get();
        h hVar4 = new h();
        threadLocal.set(hVar4);
        X x7 = f6424k;
        Long l4 = (Long) x7.get();
        long jLongValue = l4.longValue();
        try {
            x7.set(Long.valueOf(SystemClock.uptimeMillis()));
            A2.i iVarB = gVar.b(context2, str, f6425l);
            int i9 = iVarB.f630a;
            try {
                int i10 = iVarB.f631b;
                try {
                    Log.i("DynamiteModule", "Considering local module " + str + ":" + i9 + " and remote module " + str + ":" + i10);
                    int i11 = iVarB.f632c;
                    try {
                        if (i11 != 0) {
                            if (i11 != -1) {
                                if (i11 == 1 || iVarB.f631b != 0) {
                                    if (i11 == -1) {
                                        Log.i("DynamiteModule", "Selected local version of ".concat(str));
                                        cVar = new c(applicationContext);
                                    } else {
                                        if (i11 == 1) {
                                            throw new a("VersionPolicy returned invalid code:" + i11);
                                        }
                                        try {
                                            i8 = iVarB.f631b;
                                            try {
                                                synchronized (c.class) {
                                                    if (g(context)) {
                                                        throw new a("Remote loading disabled");
                                                    }
                                                    bool = f6418e;
                                                }
                                                if (bool != null) {
                                                    throw new a("Failed to determine which loading route to use.");
                                                }
                                                if (bool.booleanValue()) {
                                                    Log.i("DynamiteModule", "Selected remote version of " + str + ", version >= " + i8);
                                                    synchronized (c.class) {
                                                        jVar = f6427n;
                                                    }
                                                    if (jVar != null) {
                                                        throw new a("DynamiteLoaderV2 was not cached.");
                                                    }
                                                    hVar2 = (h) threadLocal.get();
                                                    if (hVar2 != null || hVar2.f6433a == null) {
                                                        throw new a("No result cursor");
                                                    }
                                                    Context applicationContext2 = context.getApplicationContext();
                                                    Cursor cursor3 = hVar2.f6433a;
                                                    new R3.b(null);
                                                    synchronized (c.class) {
                                                        z7 = f6421h >= 2;
                                                    }
                                                    if (z7) {
                                                        Log.v("DynamiteModule", "Dynamite loader version >= 2, using loadModule2NoCrashUtils");
                                                        aVarZ4 = jVar.A3(new R3.b(applicationContext2), str, i8, new R3.b(cursor3));
                                                    } else {
                                                        Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
                                                        aVarZ4 = jVar.z3(new R3.b(applicationContext2), str, i8, new R3.b(cursor3));
                                                    }
                                                    Context context3 = (Context) R3.b.v0(aVarZ4);
                                                    if (context3 == null) {
                                                        throw new a("Failed to get module context");
                                                    }
                                                    cVar2 = new c(context3);
                                                } else {
                                                    Log.i("DynamiteModule", "Selected remote version of " + str + ", version >= " + i8);
                                                    iVarH = h(context);
                                                    if (iVarH != null) {
                                                        throw new a("Failed to create IDynamiteLoader.");
                                                    }
                                                    iJ = iVarH.J();
                                                    if (iJ >= 3) {
                                                        hVar = (h) threadLocal.get();
                                                        if (hVar != null) {
                                                            throw new a("No cached result cursor holder");
                                                        }
                                                        aVarZ3 = iVarH.A3(new R3.b(context2), str, i8, new R3.b(hVar.f6433a));
                                                    } else if (iJ == 2) {
                                                        Log.w("DynamiteModule", "IDynamite loader version = 2");
                                                        aVarZ3 = iVarH.B3(new R3.b(context2), str, i8);
                                                    } else {
                                                        Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                                                        aVarZ3 = iVarH.z3(new R3.b(context2), str, i8);
                                                    }
                                                    objV0 = R3.b.v0(aVarZ3);
                                                    if (objV0 != null) {
                                                        throw new a("Failed to load remote module.");
                                                    }
                                                    cVar2 = new c((Context) objV0);
                                                }
                                                cVar = cVar2;
                                            } catch (a e8) {
                                                throw e8;
                                            } catch (RemoteException e9) {
                                                throw new a("Failed to load remote module.", e9);
                                            } catch (Throwable th) {
                                                P3.c.a(context2, th);
                                                throw new a("Failed to load remote module.", th);
                                            }
                                        } catch (a e10) {
                                            Log.w("DynamiteModule", "Failed to load remote module: " + e10.getMessage());
                                            int i12 = iVarB.f630a;
                                            if (i12 == 0 || gVar.b(context2, str, new C0484j(i12, 0, 1)).f632c != -1) {
                                                throw new a("Remote load failed. No local fallback found.", e10);
                                            }
                                            Log.i("DynamiteModule", "Selected local version of ".concat(str));
                                            cVar = new c(applicationContext);
                                        }
                                    }
                                    if (jLongValue == 0) {
                                        f6424k.remove();
                                    } else {
                                        f6424k.set(l4);
                                    }
                                    cursor2 = hVar4.f6433a;
                                    if (cursor2 != null) {
                                        cursor2.close();
                                    }
                                    f6423j.set(hVar3);
                                    return cVar;
                                }
                            } else if (iVarB.f630a != 0) {
                                i11 = -1;
                                if (i11 == 1) {
                                }
                                if (i11 == -1) {
                                    Log.i("DynamiteModule", "Selected local version of ".concat(str));
                                    cVar = new c(applicationContext);
                                } else {
                                    if (i11 == 1) {
                                        throw new a("VersionPolicy returned invalid code:" + i11);
                                    }
                                    i8 = iVarB.f631b;
                                    synchronized (c.class) {
                                        if (g(context)) {
                                            throw new a("Remote loading disabled");
                                        }
                                        bool = f6418e;
                                        if (bool != null) {
                                            throw new a("Failed to determine which loading route to use.");
                                        }
                                        if (bool.booleanValue()) {
                                            Log.i("DynamiteModule", "Selected remote version of " + str + ", version >= " + i8);
                                            synchronized (c.class) {
                                                jVar = f6427n;
                                                if (jVar != null) {
                                                    throw new a("DynamiteLoaderV2 was not cached.");
                                                }
                                                hVar2 = (h) threadLocal.get();
                                                if (hVar2 != null) {
                                                }
                                                throw new a("No result cursor");
                                            }
                                        }
                                        Log.i("DynamiteModule", "Selected remote version of " + str + ", version >= " + i8);
                                        iVarH = h(context);
                                        if (iVarH != null) {
                                            throw new a("Failed to create IDynamiteLoader.");
                                        }
                                        iJ = iVarH.J();
                                        if (iJ >= 3) {
                                            hVar = (h) threadLocal.get();
                                            if (hVar != null) {
                                                throw new a("No cached result cursor holder");
                                            }
                                            aVarZ3 = iVarH.A3(new R3.b(context2), str, i8, new R3.b(hVar.f6433a));
                                        } else if (iJ == 2) {
                                            Log.w("DynamiteModule", "IDynamite loader version = 2");
                                            aVarZ3 = iVarH.B3(new R3.b(context2), str, i8);
                                        } else {
                                            Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                                            aVarZ3 = iVarH.z3(new R3.b(context2), str, i8);
                                        }
                                        objV0 = R3.b.v0(aVarZ3);
                                        if (objV0 != null) {
                                            throw new a("Failed to load remote module.");
                                        }
                                        cVar2 = new c((Context) objV0);
                                        cVar = cVar2;
                                    }
                                }
                                if (jLongValue == 0) {
                                    f6424k.remove();
                                } else {
                                    f6424k.set(l4);
                                }
                                cursor2 = hVar4.f6433a;
                                if (cursor2 != null) {
                                    cursor2.close();
                                }
                                f6423j.set(hVar3);
                                return cVar;
                            }
                        }
                        throw new a("No acceptable module " + str + " found. Local version is " + iVarB.f630a + " and remote version is " + iVarB.f631b + ".");
                    } catch (Throwable th2) {
                        th = th2;
                        r7 = context2;
                        r10 = i10;
                        if (jLongValue == 0) {
                            f6424k.remove();
                        } else {
                            f6424k.set(l4);
                        }
                        cursor = r7.f6433a;
                        if (cursor != null) {
                            cursor.close();
                        }
                        f6423j.set(r10);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    r10 = hVar3;
                    r7 = hVar4;
                    if (jLongValue == 0) {
                        f6424k.remove();
                    } else {
                        f6424k.set(l4);
                    }
                    cursor = r7.f6433a;
                    if (cursor != null) {
                        cursor.close();
                    }
                    f6423j.set(r10);
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                r7 = hVar4;
                r10 = hVar3;
            }
        } catch (Throwable th5) {
            th = th5;
            r7 = hVar4;
            r10 = hVar3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00af A[Catch: all -> 0x0036, TryCatch #8 {all -> 0x0036, blocks: (B:9:0x0026, B:11:0x0032, B:52:0x00b8, B:16:0x003b, B:18:0x0042, B:20:0x0048, B:25:0x004e, B:27:0x0052, B:31:0x005c, B:33:0x0064, B:36:0x006b, B:43:0x0097, B:44:0x009f, B:39:0x0072, B:41:0x0078, B:42:0x0089, B:47:0x00a2, B:50:0x00a5, B:51:0x00af, B:17:0x003e), top: B:140:0x0026, inners: #11 }] */
    public static int d(Context context, String str, boolean z7) {
        Throwable th;
        RemoteException e8;
        int i8;
        h hVar;
        Cursor cursor;
        try {
            synchronized (c.class) {
                Boolean bool = f6418e;
                Cursor cursor2 = null;
                if (bool == null) {
                    try {
                        Field declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteModule$DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                        synchronized (declaredField.getDeclaringClass()) {
                            try {
                                ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                                if (classLoader == ClassLoader.getSystemClassLoader()) {
                                    bool = Boolean.FALSE;
                                } else if (classLoader != null) {
                                    try {
                                        f(classLoader);
                                    } catch (a unused) {
                                    }
                                    bool = Boolean.TRUE;
                                } else {
                                    if (!g(context)) {
                                        return 0;
                                    }
                                    if (f6420g) {
                                        declaredField.set(null, ClassLoader.getSystemClassLoader());
                                        bool = Boolean.FALSE;
                                    } else {
                                        Boolean bool2 = Boolean.TRUE;
                                        if (bool2.equals(null)) {
                                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                                            bool = Boolean.FALSE;
                                        } else {
                                            try {
                                                int iE = e(str, context, z7, true);
                                                String str2 = f6419f;
                                                if (str2 != null && !str2.isEmpty()) {
                                                    ClassLoader classLoaderT = e.t();
                                                    if (classLoaderT == null) {
                                                        if (Build.VERSION.SDK_INT >= 29) {
                                                            B.c();
                                                            String str3 = f6419f;
                                                            com.bumptech.glide.c.h(str3);
                                                            classLoaderT = B.b(str3, ClassLoader.getSystemClassLoader());
                                                        } else {
                                                            String str4 = f6419f;
                                                            com.bumptech.glide.c.h(str4);
                                                            classLoaderT = new f(str4, ClassLoader.getSystemClassLoader());
                                                        }
                                                    }
                                                    f(classLoaderT);
                                                    declaredField.set(null, classLoaderT);
                                                    f6418e = bool2;
                                                    return iE;
                                                }
                                                return iE;
                                            } catch (a unused2) {
                                                declaredField.set(null, ClassLoader.getSystemClassLoader());
                                                bool = Boolean.FALSE;
                                            }
                                        }
                                    }
                                }
                                f6418e = bool;
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e9) {
                        Log.w("DynamiteModule", "Failed to load module via V2: " + e9.toString());
                        bool = Boolean.FALSE;
                    }
                }
                if (bool.booleanValue()) {
                    try {
                        return e(str, context, z7, false);
                    } catch (a e10) {
                        Log.w("DynamiteModule", "Failed to retrieve remote module version: " + e10.getMessage());
                        return 0;
                    }
                }
                i iVarH = h(context);
                try {
                    if (iVarH == null) {
                        return 0;
                    }
                    try {
                        int iJ = iVarH.J();
                        if (iJ >= 3) {
                            ThreadLocal threadLocal = f6423j;
                            h hVar2 = (h) threadLocal.get();
                            if (hVar2 != null && (cursor = hVar2.f6433a) != null) {
                                return cursor.getInt(0);
                            }
                            Cursor cursor3 = (Cursor) R3.b.v0(iVarH.C3(new R3.b(context), str, z7, ((Long) f6424k.get()).longValue()));
                            if (cursor3 != null) {
                                try {
                                    if (cursor3.moveToFirst()) {
                                        i8 = cursor3.getInt(0);
                                        if (i8 <= 0 || (hVar = (h) threadLocal.get()) == null || hVar.f6433a != null) {
                                            cursor2 = cursor3;
                                        } else {
                                            hVar.f6433a = cursor3;
                                        }
                                        if (cursor2 != null) {
                                            cursor2.close();
                                        }
                                    }
                                } catch (RemoteException e11) {
                                    e8 = e11;
                                    cursor2 = cursor3;
                                    Log.w("DynamiteModule", "Failed to retrieve remote module version: " + e8.getMessage());
                                    if (cursor2 == null) {
                                        return 0;
                                    }
                                    cursor2.close();
                                    return 0;
                                } catch (Throwable th3) {
                                    th = th3;
                                    cursor2 = cursor3;
                                    if (cursor2 != null) {
                                        cursor2.close();
                                    }
                                    throw th;
                                }
                            }
                            Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                            if (cursor3 == null) {
                                return 0;
                            }
                            cursor3.close();
                            return 0;
                        }
                        if (iJ == 2) {
                            Log.w("DynamiteModule", "IDynamite loader version = 2, no high precision latency measurement.");
                            R3.b bVar = new R3.b(context);
                            Parcel parcelJ0 = iVarH.j0();
                            Y3.a.c(parcelJ0, bVar);
                            parcelJ0.writeString(str);
                            parcelJ0.writeInt(z7 ? 1 : 0);
                            Parcel parcelY = iVarH.Y(5, parcelJ0);
                            i8 = parcelY.readInt();
                            parcelY.recycle();
                        } else {
                            Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
                            R3.b bVar2 = new R3.b(context);
                            Parcel parcelJ1 = iVarH.j0();
                            Y3.a.c(parcelJ1, bVar2);
                            parcelJ1.writeString(str);
                            parcelJ1.writeInt(z7 ? 1 : 0);
                            Parcel parcelY2 = iVarH.Y(3, parcelJ1);
                            i8 = parcelY2.readInt();
                            parcelY2.recycle();
                        }
                        return i8;
                    } catch (RemoteException e12) {
                        e8 = e12;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            }
        } catch (Throwable th5) {
            P3.c.a(context, th5);
            throw th5;
        }
    }

    /* JADX WARN: Code duplicated, block: B:80:0x012d A[PHI: r14
      0x012d: PHI (r14v9 boolean) = (r14v8 boolean), (r14v11 boolean), (r14v11 boolean) binds: [B:58:0x00ec, B:75:0x0124, B:77:0x0128] A[DONT_GENERATE, DONT_INLINE]] */
    public static int e(String str, Context context, boolean z7, boolean z8) throws Throwable {
        MatrixCursor matrixCursor;
        MatrixCursor matrixCursor2 = null;
        try {
            try {
                boolean z9 = true;
                Uri uriBuild = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").path(true != z7 ? "api" : "api_force_staging").appendPath(str).appendQueryParameter("requestStartUptime", String.valueOf(((Long) f6424k.get()).longValue())).build();
                ContentProviderClient contentProviderClientAcquireUnstableContentProviderClient = context.getContentResolver().acquireUnstableContentProviderClient(uriBuild);
                boolean z10 = false;
                if (contentProviderClientAcquireUnstableContentProviderClient == null) {
                    matrixCursor = null;
                } else {
                    try {
                        Cursor cursorQuery = contentProviderClientAcquireUnstableContentProviderClient.query(uriBuild, null, null, null, null);
                        if (cursorQuery == null) {
                            contentProviderClientAcquireUnstableContentProviderClient.release();
                            matrixCursor = null;
                        } else {
                            try {
                                int count = cursorQuery.getCount();
                                int columnCount = cursorQuery.getColumnCount();
                                matrixCursor = new MatrixCursor(cursorQuery.getColumnNames(), count);
                                for (int i8 = 0; i8 < count; i8++) {
                                    if (!cursorQuery.moveToPosition(i8)) {
                                        throw new RemoteException("Cursor read incomplete (ContentProvider dead?)");
                                    }
                                    Object[] objArr = new Object[columnCount];
                                    for (int i9 = 0; i9 < columnCount; i9++) {
                                        int type = cursorQuery.getType(i9);
                                        if (type == 0) {
                                            objArr[i9] = null;
                                        } else if (type == 1) {
                                            objArr[i9] = Long.valueOf(cursorQuery.getLong(i9));
                                        } else if (type == 2) {
                                            objArr[i9] = Double.valueOf(cursorQuery.getDouble(i9));
                                        } else if (type == 3) {
                                            objArr[i9] = cursorQuery.getString(i9);
                                        } else {
                                            if (type != 4) {
                                                throw new RemoteException("Unknown column type");
                                            }
                                            objArr[i9] = cursorQuery.getBlob(i9);
                                        }
                                    }
                                    matrixCursor.addRow(objArr);
                                }
                                cursorQuery.close();
                                contentProviderClientAcquireUnstableContentProviderClient.release();
                            } catch (Throwable th) {
                                try {
                                    cursorQuery.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                                throw th;
                            }
                        }
                    } catch (RemoteException unused) {
                    } catch (Throwable th3) {
                        contentProviderClientAcquireUnstableContentProviderClient.release();
                        throw th3;
                    }
                }
                if (matrixCursor != null) {
                    try {
                        if (matrixCursor.moveToFirst()) {
                            int i10 = matrixCursor.getInt(0);
                            if (i10 > 0) {
                                synchronized (c.class) {
                                    try {
                                        f6419f = matrixCursor.getString(2);
                                        int columnIndex = matrixCursor.getColumnIndex("loaderVersion");
                                        if (columnIndex >= 0) {
                                            f6421h = matrixCursor.getInt(columnIndex);
                                        }
                                        int columnIndex2 = matrixCursor.getColumnIndex("disableStandaloneDynamiteLoader2");
                                        if (columnIndex2 >= 0) {
                                            if (matrixCursor.getInt(columnIndex2) == 0) {
                                                z9 = false;
                                            }
                                            f6420g = z9;
                                            z10 = z9;
                                        }
                                    } catch (Throwable th4) {
                                        throw th4;
                                    }
                                }
                                h hVar = (h) f6423j.get();
                                if (hVar == null || hVar.f6433a != null) {
                                    matrixCursor2 = matrixCursor;
                                } else {
                                    hVar.f6433a = matrixCursor;
                                }
                            } else {
                                matrixCursor2 = matrixCursor;
                            }
                            if (z8 && z10) {
                                throw new a("forcing fallback to container DynamiteLoader impl");
                            }
                            if (matrixCursor2 != null) {
                                matrixCursor2.close();
                            }
                            return i10;
                        }
                    } catch (Exception e8) {
                        e = e8;
                        if (e instanceof a) {
                            throw e;
                        }
                        throw new a("V2 version check failed: " + e.getMessage(), e);
                    } catch (Throwable th5) {
                        th = th5;
                        matrixCursor2 = matrixCursor;
                        if (matrixCursor2 != null) {
                            matrixCursor2.close();
                        }
                        throw th;
                    }
                }
                Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                throw new a("Failed to connect to dynamite module ContentResolver.");
            } catch (Exception e9) {
                e = e9;
            }
        } catch (Throwable th6) {
            th = th6;
        }
    }

    public static void f(ClassLoader classLoader) throws a {
        j jVar;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                jVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                jVar = iInterfaceQueryLocalInterface instanceof j ? (j) iInterfaceQueryLocalInterface : new j(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2", 3);
            }
            f6427n = jVar;
        } catch (ClassNotFoundException e8) {
            e = e8;
            throw new a("Failed to instantiate dynamite loader", e);
        } catch (IllegalAccessException e9) {
            e = e9;
            throw new a("Failed to instantiate dynamite loader", e);
        } catch (InstantiationException e10) {
            e = e10;
            throw new a("Failed to instantiate dynamite loader", e);
        } catch (NoSuchMethodException e11) {
            e = e11;
            throw new a("Failed to instantiate dynamite loader", e);
        } catch (InvocationTargetException e12) {
            e = e12;
            throw new a("Failed to instantiate dynamite loader", e);
        }
    }

    public static boolean g(Context context) {
        ApplicationInfo applicationInfo;
        Boolean bool = Boolean.TRUE;
        if (bool.equals(null) || bool.equals(f6422i)) {
            return true;
        }
        boolean z7 = false;
        if (f6422i == null) {
            ProviderInfo providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.chimera", Build.VERSION.SDK_INT >= 29 ? 268435456 : 0);
            if (J3.f.f4145b.c(context, 10000000) == 0 && providerInfoResolveContentProvider != null && "com.google.android.gms".equals(providerInfoResolveContentProvider.packageName)) {
                z7 = true;
            }
            f6422i = Boolean.valueOf(z7);
            if (z7 && (applicationInfo = providerInfoResolveContentProvider.applicationInfo) != null && (applicationInfo.flags & 129) == 0) {
                Log.i("DynamiteModule", "Non-system-image GmsCore APK, forcing V1");
                f6420g = true;
            }
        }
        if (!z7) {
            Log.e("DynamiteModule", "Invalid GmsCore APK, remote loading disabled.");
        }
        return z7;
    }

    public static i h(Context context) {
        i iVar;
        synchronized (c.class) {
            i iVar2 = f6426m;
            if (iVar2 != null) {
                return iVar2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    iVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    iVar = iInterfaceQueryLocalInterface instanceof i ? (i) iInterfaceQueryLocalInterface : new i(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader", 3);
                }
                if (iVar != null) {
                    f6426m = iVar;
                    return iVar;
                }
            } catch (Exception e8) {
                Log.e("DynamiteModule", "Failed to load IDynamiteLoader from GmsCore: " + e8.getMessage());
            }
            return null;
        }
    }

    public final IBinder b(String str) throws a {
        try {
            return (IBinder) this.f6428a.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e8) {
            throw new a("Failed to instantiate module class: ".concat(str), e8);
        }
    }
}
