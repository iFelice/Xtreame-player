package p113o3;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build;
import com.google.android.gms.internal.ads.C1093bD;
import com.google.android.gms.internal.ads.J7;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.measurement.W1;
import com.google.android.gms.internal.measurement.X1;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.WeakHashMap;
import okhttp3.HttpUrl;
import p090l3.C3099q;
import p190y4.i;
import p190y4.j;

/* JADX INFO: loaded from: classes.dex */
public final class G {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f27881a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f27882b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f27883c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f27884d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f27885e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f27886f;

    public G(Uri uri, boolean z7, boolean z8) {
        this.f27881a = 1;
        this.f27884d = uri;
        this.f27885e = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f27886f = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f27882b = z7;
        this.f27883c = z8;
    }

    public final void a(Object obj, String str) {
        C1093bD c1093bD = new C1093bD(18, (Object) null);
        ((C1093bD) this.f27886f).f18027I = c1093bD;
        this.f27886f = c1093bD;
        c1093bD.f18026H = obj;
        c1093bD.f18028J = str;
    }

    public final void b(String str, String str2) {
        i iVar = new i(18, null);
        ((C1093bD) this.f27886f).f18027I = iVar;
        this.f27886f = iVar;
        iVar.f18026H = str;
        iVar.f18028J = str2;
    }

    public final synchronized void c(Context context) {
        try {
            if (this.f27882b) {
                return;
            }
            Context applicationContext = context.getApplicationContext();
            this.f27886f = applicationContext;
            if (applicationContext == null) {
                this.f27886f = context;
            }
            Q7.a((Context) this.f27886f);
            J7 j8 = Q7.f15585B3;
            C3099q c3099q = C3099q.f26624d;
            this.f27883c = ((Boolean) c3099q.f26627c.a(j8)).booleanValue();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            if (!((Boolean) c3099q.f26627c.a(Q7.na)).booleanValue() || Build.VERSION.SDK_INT < 33) {
                ((Context) this.f27886f).registerReceiver((BroadcastReceiver) this.f27884d, intentFilter);
            } else {
                ((Context) this.f27886f).registerReceiver((BroadcastReceiver) this.f27884d, intentFilter, 4);
            }
            this.f27882b = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final W1 d(long j8, String str) {
        Long lValueOf = Long.valueOf(j8);
        Object obj = X1.f23041f;
        return new W1(this, str, lValueOf, 0);
    }

    public final synchronized void e(Context context, BroadcastReceiver broadcastReceiver) {
        if (this.f27883c) {
            ((Map) this.f27885e).remove(broadcastReceiver);
        } else {
            context.unregisterReceiver(broadcastReceiver);
        }
    }

    public final W1 f(String str, String str2) {
        Object obj = X1.f23041f;
        return new W1(this, str, str2, 3);
    }

    public final W1 g(String str, boolean z7) {
        Boolean boolValueOf = Boolean.valueOf(z7);
        Object obj = X1.f23041f;
        return new W1(this, str, boolValueOf, 1);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0082  */
    /* JADX WARN: Code duplicated, block: B:37:0x008b  */
    /* JADX WARN: Code duplicated, block: B:39:0x0095  */
    /* JADX WARN: Code duplicated, block: B:42:0x00b1  */
    public final String toString() {
        String str;
        boolean zIsEmpty;
        switch (this.f27881a) {
            case 2:
                boolean z7 = this.f27882b;
                boolean z8 = this.f27883c;
                StringBuilder sb = new StringBuilder(32);
                sb.append((String) this.f27884d);
                sb.append('{');
                String str2 = HttpUrl.FRAGMENT_ENCODE_SET;
                for (C1093bD c1093bD = (C1093bD) ((C1093bD) this.f27885e).f18027I; c1093bD != null; c1093bD = (C1093bD) c1093bD.f18027I) {
                    Object obj = c1093bD.f18026H;
                    if (c1093bD instanceof i) {
                        sb.append(str2);
                        str = (String) c1093bD.f18028J;
                        if (str != null) {
                            sb.append(str);
                            sb.append('=');
                        }
                        if (obj == null && obj.getClass().isArray()) {
                            String strDeepToString = Arrays.deepToString(new Object[]{obj});
                            sb.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
                        } else {
                            sb.append(obj);
                        }
                        str2 = ", ";
                    } else if (obj == null) {
                        if (!z7) {
                            sb.append(str2);
                            str = (String) c1093bD.f18028J;
                            if (str != null) {
                                sb.append(str);
                                sb.append('=');
                            }
                            if (obj == null) {
                                sb.append(obj);
                            } else {
                                sb.append(obj);
                            }
                            str2 = ", ";
                        }
                    } else if (!z8) {
                        sb.append(str2);
                        str = (String) c1093bD.f18028J;
                        if (str != null) {
                            sb.append(str);
                            sb.append('=');
                        }
                        if (obj == null) {
                            sb.append(obj);
                        } else {
                            sb.append(obj);
                        }
                        str2 = ", ";
                    } else if (!(obj instanceof CharSequence)) {
                        if (obj instanceof Collection) {
                            zIsEmpty = ((Collection) obj).isEmpty();
                        } else if (obj instanceof Map) {
                            zIsEmpty = ((Map) obj).isEmpty();
                        } else if (obj instanceof j) {
                            zIsEmpty = !((j) obj).b();
                        } else if (!obj.getClass().isArray() || Array.getLength(obj) != 0) {
                            sb.append(str2);
                            str = (String) c1093bD.f18028J;
                            if (str != null) {
                                sb.append(str);
                                sb.append('=');
                            }
                            if (obj == null) {
                                sb.append(obj);
                            } else {
                                sb.append(obj);
                            }
                            str2 = ", ";
                        }
                        if (!zIsEmpty) {
                            sb.append(str2);
                            str = (String) c1093bD.f18028J;
                            if (str != null) {
                                sb.append(str);
                                sb.append('=');
                            }
                            if (obj == null) {
                                sb.append(obj);
                            } else {
                                sb.append(obj);
                            }
                            str2 = ", ";
                        }
                    } else if (((CharSequence) obj).length() != 0) {
                        sb.append(str2);
                        str = (String) c1093bD.f18028J;
                        if (str != null) {
                            sb.append(str);
                            sb.append('=');
                        }
                        if (obj == null) {
                            sb.append(obj);
                        } else {
                            sb.append(obj);
                        }
                        str2 = ", ";
                    }
                }
                sb.append('}');
                return sb.toString();
            default:
                return super.toString();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ G(String str, int i8) {
        this(str);
        this.f27881a = 2;
    }

    public G() {
        this.f27881a = 0;
        this.f27882b = false;
        this.f27885e = new WeakHashMap();
        this.f27884d = new p039f.G(this, 8);
    }

    public G(String str) {
        this.f27881a = 2;
        C1093bD c1093bD = new C1093bD(18, (Object) null);
        this.f27885e = c1093bD;
        this.f27886f = c1093bD;
        this.f27882b = false;
        this.f27883c = false;
        this.f27884d = str;
    }
}
