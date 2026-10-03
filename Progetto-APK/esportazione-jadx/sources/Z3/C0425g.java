package Z3;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.internal.ads.Cw;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: Z3.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0425g implements J {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Application f8321a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0427i f8322b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c0 f8323c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Executor f8324d;

    public C0425g(Application application, C0427i c0427i, c0 c0Var, F f8) {
        this.f8321a = application;
        this.f8322b = c0427i;
        this.f8324d = f8;
        this.f8323c = c0Var;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:106:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:111:0x02d1  */
    /* JADX WARN: Code duplicated, block: B:113:0x02d9  */
    /* JADX WARN: Code duplicated, block: B:114:0x02db  */
    /* JADX WARN: Code duplicated, block: B:116:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:117:0x02e5  */
    /* JADX WARN: Code duplicated, block: B:119:0x02ed  */
    /* JADX WARN: Code duplicated, block: B:120:0x02ef  */
    /* JADX WARN: Code duplicated, block: B:122:0x02f7  */
    /* JADX WARN: Code duplicated, block: B:123:0x02f9  */
    /* JADX WARN: Code duplicated, block: B:126:0x0300 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:127:0x0302  */
    /* JADX WARN: Code duplicated, block: B:129:0x0305  */
    /* JADX WARN: Code duplicated, block: B:132:0x030a  */
    /* JADX WARN: Code duplicated, block: B:133:0x030f  */
    /* JADX WARN: Code duplicated, block: B:134:0x0313  */
    /* JADX WARN: Code duplicated, block: B:135:0x0317  */
    /* JADX WARN: Code duplicated, block: B:138:0x032a  */
    /* JADX WARN: Code duplicated, block: B:13:0x002b  */
    /* JADX WARN: Code duplicated, block: B:140:0x0331  */
    /* JADX WARN: Code duplicated, block: B:142:0x0338  */
    /* JADX WARN: Code duplicated, block: B:144:0x033b  */
    /* JADX WARN: Code duplicated, block: B:146:0x033e  */
    /* JADX WARN: Code duplicated, block: B:148:0x0356  */
    /* JADX WARN: Code duplicated, block: B:155:0x036d  */
    /* JADX WARN: Code duplicated, block: B:156:0x0370  */
    /* JADX WARN: Code duplicated, block: B:158:0x0374  */
    /* JADX WARN: Code duplicated, block: B:159:0x0377  */
    /* JADX WARN: Code duplicated, block: B:161:0x037a  */
    /* JADX WARN: Code duplicated, block: B:162:0x0380  */
    /* JADX WARN: Code duplicated, block: B:164:0x0384  */
    /* JADX WARN: Code duplicated, block: B:166:0x038d  */
    /* JADX WARN: Code duplicated, block: B:168:0x0392  */
    /* JADX WARN: Code duplicated, block: B:181:0x03b8  */
    /* JADX WARN: Code duplicated, block: B:182:0x03be  */
    /* JADX WARN: Code duplicated, block: B:183:0x03c2  */
    /* JADX WARN: Code duplicated, block: B:184:0x03cd  */
    /* JADX WARN: Code duplicated, block: B:188:0x03f5  */
    /* JADX WARN: Code duplicated, block: B:227:0x0286 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:253:0x02c9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:255:0x02b7 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:138:0x032a, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:146:0x033e, please report this as an issue */
    @Override // Z3.J
    public final boolean a(JSONObject jSONObject, String str) {
        byte b8;
        HashMap map;
        HashMap map2;
        C0427i c0427i;
        HashMap map3;
        Context context;
        AtomicReference atomicReference;
        String str2;
        HashMap map4;
        Iterator it;
        HashMap map5;
        String str3;
        byte b9;
        String str4;
        String str5;
        int iIntValue;
        Iterator it2;
        String str6;
        HashMap map6;
        Object obj;
        Object obj2;
        HashMap map7;
        boolean z7 = true;
        int iHashCode = str.hashCode();
        if (iHashCode != 94746189) {
            if (iHashCode == 113399775 && str.equals("write")) {
                b8 = 0;
            } else {
                b8 = -1;
            }
        } else if (str.equals("clear")) {
            b8 = 1;
        } else {
            b8 = -1;
        }
        Application application = this.f8321a;
        if (b8 != 0) {
            if (b8 != 1) {
                return false;
            }
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("keys");
            if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() == 0) {
                Log.d("UserMessagingPlatform", "Action[clear]: wrong args.".concat(String.valueOf(jSONObject.toString())));
            } else {
                HashSet hashSet = new HashSet();
                int length = jSONArrayOptJSONArray.length();
                for (int i8 = 0; i8 < length; i8++) {
                    String strOptString = jSONArrayOptJSONArray.optString(i8);
                    if (TextUtils.isEmpty(strOptString)) {
                        Log.d("UserMessagingPlatform", "Action[clear]: empty key at index: " + i8);
                    } else {
                        hashSet.add(strOptString);
                    }
                }
                D d6 = new D(application);
                Iterator it3 = hashSet.iterator();
                while (true) {
                    boolean zHasNext = it3.hasNext();
                    map7 = d6.f8249c;
                    if (!zHasNext) {
                        break;
                    }
                    String str7 = (String) it3.next();
                    C0432n c0432nZ = Cw.z(application, str7);
                    if (c0432nZ == null) {
                        Log.d("UserMessagingPlatform", "clearKeys: unable to process key: ".concat(String.valueOf(str7)));
                    } else {
                        String str8 = (String) c0432nZ.f8369G;
                        if (!map7.containsKey(str8)) {
                            map7.put(str8, d6.f8248b.getSharedPreferences(str8, 0).edit());
                        }
                        ((SharedPreferences.Editor) map7.get(str8)).remove((String) c0432nZ.f8370H);
                    }
                }
                Iterator it4 = map7.values().iterator();
                while (it4.hasNext()) {
                    ((SharedPreferences.Editor) it4.next()).commit();
                }
            }
            return true;
        }
        D d8 = new D(application);
        Iterator<String> itKeys = jSONObject.keys();
        while (true) {
            boolean zHasNext2 = itKeys.hasNext();
            map = d8.f8247a;
            map2 = d8.f8249c;
            c0427i = this.f8322b;
            if (!zHasNext2) {
                break;
            }
            String next = itKeys.next();
            Object objOpt = jSONObject.opt(next);
            Log.d("UserMessagingPlatform", "Writing to storage: [" + next + "] " + String.valueOf(objOpt));
            Context context2 = d8.f8248b;
            C0432n c0432nZ2 = Cw.z(context2, next);
            if (c0432nZ2 != null) {
                String str9 = (String) c0432nZ2.f8369G;
                if (!map2.containsKey(str9)) {
                    map2.put(str9, context2.getSharedPreferences(str9, 0).edit());
                }
                SharedPreferences.Editor editor = (SharedPreferences.Editor) map2.get(str9);
                boolean z8 = objOpt instanceof Integer;
                Object obj3 = c0432nZ2.f8370H;
                if (z8) {
                    Integer num = (Integer) objOpt;
                    String str10 = (String) obj3;
                    editor.putInt(str10, num.intValue());
                    if (D.f8246d.contains(str10)) {
                        map.put(str10, num);
                    }
                } else if (objOpt instanceof Long) {
                    editor.putLong((String) obj3, ((Long) objOpt).longValue());
                } else if (objOpt instanceof Double) {
                    editor.putFloat((String) obj3, ((Double) objOpt).floatValue());
                } else if (objOpt instanceof Float) {
                    editor.putFloat((String) obj3, ((Float) objOpt).floatValue());
                } else if (objOpt instanceof Boolean) {
                    editor.putBoolean((String) obj3, ((Boolean) objOpt).booleanValue());
                } else if (objOpt instanceof String) {
                    editor.putString((String) obj3, (String) objOpt);
                }
                c0427i.f8346c.add(next);
            }
            Log.d("UserMessagingPlatform", "Failed writing key: ".concat(String.valueOf(next)));
        }
        c0427i.f8345b.edit().putStringSet("written_values", c0427i.f8346c).commit();
        Iterator it5 = map2.values().iterator();
        while (it5.hasNext()) {
            ((SharedPreferences.Editor) it5.next()).commit();
        }
        if (map.size() <= 1) {
            return true;
        }
        c0 c0Var = this.f8323c;
        C0423e c0423e = c0Var.f8301a;
        AtomicReference atomicReference2 = c0423e.f8313g;
        Object obj4 = atomicReference2.get();
        AtomicReference atomicReference3 = c0423e.f8311e;
        AtomicReference atomicReference4 = c0423e.f8310d;
        AtomicReference atomicReference5 = c0423e.f8309c;
        AtomicReference atomicReference6 = c0423e.f8308b;
        if (obj4 == null) {
            Context context3 = c0423e.f8307a;
            if (context3 == null) {
                atomicReference2.set(Boolean.FALSE);
                map3 = map;
            } else {
                try {
                    atomicReference6.set(FirebaseAnalytics.class.getDeclaredMethod("getInstance", Context.class).invoke(null, context3));
                    atomicReference5.set(FirebaseAnalytics.class.getDeclaredMethod("setConsent", Map.class));
                    Method declaredMethod = I4.a.class.getDeclaredMethod("valueOf", String.class);
                    Method declaredMethod2 = I4.b.class.getDeclaredMethod("valueOf", String.class);
                    atomicReference4.set(declaredMethod);
                    atomicReference3.set(declaredMethod2);
                    atomicReference2.set(Boolean.TRUE);
                    context = c0Var.f8302b;
                    atomicReference = c0423e.f8312f;
                    if (atomicReference.get() == null) {
                        atomicReference.set(Q3.c.a(context).b(128, context.getPackageName()).metaData);
                    }
                    str2 = "IABTCF_gdprApplies";
                    Integer num2 = (Integer) map.get("IABTCF_gdprApplies");
                    map4 = new HashMap();
                    it = map.keySet().iterator();
                    while (it.hasNext()) {
                        str3 = (String) it.next();
                        if (!str3.equals(str2)) {
                            switch (str3) {
                                case "UMP_CoMoAdPersonalizationPurposeConsentStatus":
                                    b9 = 2;
                                    break;
                                case "UMP_CoMoAnalyticsStoragePurposeConsentStatus":
                                    b9 = 3;
                                    break;
                                case "UMP_CoMoAdStoragePurposeConsentStatus":
                                    b9 = 0;
                                    break;
                                case "UMP_CoMoAdUserDataPurposeConsentStatus":
                                    b9 = 1;
                                    break;
                                default:
                                    b9 = -1;
                                    break;
                            }
                            if (b9 != 0) {
                                str4 = "google_analytics_default_allow_ad_storage";
                                str5 = "AD_STORAGE";
                            } else if (b9 != z7) {
                                str4 = "google_analytics_default_allow_ad_user_data";
                                str5 = "AD_USER_DATA";
                            } else if (b9 != 2) {
                                if (b9 == 3) {
                                    str4 = "google_analytics_default_allow_analytics_storage";
                                    str5 = "ANALYTICS_STORAGE";
                                }
                                z7 = true;
                            } else {
                                str4 = "google_analytics_default_allow_ad_personalization_signals";
                                str5 = "AD_PERSONALIZATION";
                            }
                            iIntValue = ((Integer) map.get(str3)).intValue();
                            it2 = it;
                            if (iIntValue != -1) {
                                map6 = map;
                                if (iIntValue != 1) {
                                    str6 = str2;
                                    if (iIntValue != 2) {
                                        map4.put(str5, "DENIED");
                                    } else if (iIntValue != 4) {
                                        if (iIntValue != 5) {
                                            Log.w("UserMessagingPlatform", "Invalid CoMo consent status: " + iIntValue);
                                        } else {
                                            if (atomicReference.get() != null) {
                                                obj = null;
                                            } else if (obj2 instanceof Boolean) {
                                                obj = (Boolean) obj2;
                                            } else if (obj2 instanceof String) {
                                                obj = (String) obj2;
                                            } else {
                                                obj = null;
                                            }
                                            if (obj == null) {
                                                Log.w("UserMessagingPlatform", "No default metadata");
                                            } else if (obj instanceof Boolean) {
                                                map4.put(str5, true != ((Boolean) obj).booleanValue() ? "DENIED" : "GRANTED");
                                            } else if (obj instanceof String) {
                                                Log.w("UserMessagingPlatform", "Failed to get the default eu_consent_policy value.");
                                            } else {
                                                Log.w("UserMessagingPlatform", "Failed to get the default eu_consent_policy value.");
                                            }
                                        }
                                    }
                                } else {
                                    map4.put(str5, "GRANTED");
                                    it = it2;
                                    map = map6;
                                }
                                z7 = true;
                            } else {
                                str6 = str2;
                                map6 = map;
                            }
                            it = it2;
                            map = map6;
                            str2 = str6;
                            z7 = true;
                        }
                    }
                    map3 = map;
                    Log.d("UserMessagingPlatform", "Update Firebase: ".concat(map4.toString()));
                    map5 = new HashMap();
                    for (String str11 : map4.keySet()) {
                        map5.put((Enum) ((Method) atomicReference3.get()).invoke(null, str11), (Enum) ((Method) atomicReference4.get()).invoke(null, map4.get(str11)));
                    }
                    if (atomicReference5.get() != null) {
                        ((Method) atomicReference5.get()).invoke(atomicReference6.get(), map5);
                    }
                } catch (Exception e8) {
                    map3 = map;
                    Log.w("UserMessagingPlatform", "No Firebase class found. ", e8);
                    atomicReference2.set(Boolean.FALSE);
                }
            }
        } else if (((Boolean) atomicReference2.get()).booleanValue()) {
            context = c0Var.f8302b;
            atomicReference = c0423e.f8312f;
            if (atomicReference.get() == null) {
                try {
                    atomicReference.set(Q3.c.a(context).b(128, context.getPackageName()).metaData);
                } catch (PackageManager.NameNotFoundException | NullPointerException e9) {
                    Log.w("UserMessagingPlatform", "Failed to get metadata. ", e9);
                }
            }
            str2 = "IABTCF_gdprApplies";
            Integer num3 = (Integer) map.get("IABTCF_gdprApplies");
            map4 = new HashMap();
            it = map.keySet().iterator();
            while (it.hasNext()) {
                str3 = (String) it.next();
                if (!str3.equals(str2)) {
                    switch (str3) {
                        case -1926457382:
                            if (!str3.equals("UMP_CoMoAdPersonalizationPurposeConsentStatus")) {
                                b9 = 2;
                            } else {
                                b9 = -1;
                            }
                            break;
                        case -142866440:
                            if (!str3.equals("UMP_CoMoAnalyticsStoragePurposeConsentStatus")) {
                                b9 = 3;
                            } else {
                                b9 = -1;
                            }
                            break;
                        case 1068702385:
                            if (!str3.equals("UMP_CoMoAdStoragePurposeConsentStatus")) {
                                b9 = 0;
                            } else {
                                b9 = -1;
                            }
                            break;
                        case 1479307131:
                            if (!str3.equals("UMP_CoMoAdUserDataPurposeConsentStatus")) {
                                b9 = 1;
                            } else {
                                b9 = -1;
                            }
                            break;
                        default:
                            b9 = -1;
                            break;
                    }
                    if (b9 != 0) {
                        str4 = "google_analytics_default_allow_ad_storage";
                        str5 = "AD_STORAGE";
                    } else if (b9 != z7) {
                        str4 = "google_analytics_default_allow_ad_user_data";
                        str5 = "AD_USER_DATA";
                    } else if (b9 != 2) {
                        if (b9 == 3) {
                            str4 = "google_analytics_default_allow_analytics_storage";
                            str5 = "ANALYTICS_STORAGE";
                        }
                        z7 = true;
                    } else {
                        str4 = "google_analytics_default_allow_ad_personalization_signals";
                        str5 = "AD_PERSONALIZATION";
                    }
                    iIntValue = ((Integer) map.get(str3)).intValue();
                    it2 = it;
                    if (iIntValue != -1) {
                        map6 = map;
                        if (iIntValue != 1) {
                            str6 = str2;
                            if (iIntValue != 2) {
                                map4.put(str5, "DENIED");
                            } else if (iIntValue != 4) {
                                if (iIntValue != 5) {
                                    Log.w("UserMessagingPlatform", "Invalid CoMo consent status: " + iIntValue);
                                } else {
                                    if (atomicReference.get() != null || (obj2 = ((Bundle) atomicReference.get()).get(str4)) == null) {
                                        obj = null;
                                    } else if (obj2 instanceof Boolean) {
                                        obj = (Boolean) obj2;
                                    } else if (obj2 instanceof String) {
                                        obj = (String) obj2;
                                    } else {
                                        obj = null;
                                    }
                                    if (obj == null) {
                                        Log.w("UserMessagingPlatform", "No default metadata");
                                    } else if (obj instanceof Boolean) {
                                        map4.put(str5, true != ((Boolean) obj).booleanValue() ? "DENIED" : "GRANTED");
                                    } else if ((obj instanceof String) || !obj.equals("eu_consent_policy") || (!(str5.equals("AD_PERSONALIZATION") || str5.equals("AD_USER_DATA")) || num3 == null)) {
                                        Log.w("UserMessagingPlatform", "Failed to get the default eu_consent_policy value.");
                                    } else {
                                        map4.put(str5, num3.intValue() == 1 ? "DENIED" : "GRANTED");
                                    }
                                }
                            }
                        } else {
                            map4.put(str5, "GRANTED");
                            it = it2;
                            map = map6;
                        }
                        z7 = true;
                    } else {
                        str6 = str2;
                        map6 = map;
                    }
                    it = it2;
                    map = map6;
                    str2 = str6;
                    z7 = true;
                }
            }
            map3 = map;
            Log.d("UserMessagingPlatform", "Update Firebase: ".concat(map4.toString()));
            map5 = new HashMap();
            while (r2.hasNext()) {
                try {
                    try {
                        try {
                            map5.put((Enum) ((Method) atomicReference3.get()).invoke(null, str11), (Enum) ((Method) atomicReference4.get()).invoke(null, map4.get(str11)));
                        } catch (Exception e10) {
                            e = e10;
                            Log.w("UserMessagingPlatform", "Failed to invoke the Firebase static method.", e);
                        }
                    } catch (Exception e11) {
                        e = e11;
                    }
                } catch (Exception e12) {
                    e = e12;
                }
            }
            if (atomicReference5.get() != null && !map5.isEmpty()) {
                try {
                    ((Method) atomicReference5.get()).invoke(atomicReference6.get(), map5);
                } catch (Exception e13) {
                    Log.w("UserMessagingPlatform", "Failed to invoke Firebase method. ", e13);
                }
            }
        } else {
            map3 = map;
        }
        map3.clear();
        return true;
    }

    @Override // Z3.J
    public final Executor zza() {
        return this.f8324d;
    }
}
