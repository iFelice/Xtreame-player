package Z3;

import android.app.Application;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.internal.ads.Cw;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: renamed from: Z3.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0427i {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final O f8343d = O.o(4, "IABTCF_TCString", "IABGPP_HDR_GppString", "IABGPP_GppSID", "IABUSPrivacy_String");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Application f8344a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedPreferences f8345b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashSet f8346c;

    public C0427i(Application application) {
        this.f8344a = application;
        SharedPreferences sharedPreferences = application.getSharedPreferences("__GOOGLE_FUNDING_CHOICE_SDK_INTERNAL__", 0);
        this.f8345b = sharedPreferences;
        this.f8346c = new HashSet(sharedPreferences.getStringSet("written_values", Collections.emptySet()));
    }

    public final HashMap a() {
        String string;
        Set<String> stringSet = this.f8345b.getStringSet("stored_info", S.f8272O);
        if (stringSet.isEmpty()) {
            stringSet = f8343d;
        }
        HashMap map = new HashMap();
        for (String str : stringSet) {
            Application application = this.f8344a;
            C0432n c0432nZ = Cw.z(application, str);
            if (c0432nZ == null) {
                Log.d("UserMessagingPlatform", "Fetching request info: failed for key: ".concat(String.valueOf(str)));
            } else {
                Object obj = application.getSharedPreferences((String) c0432nZ.f8369G, 0).getAll().get((String) c0432nZ.f8370H);
                if (obj == null) {
                    Log.d("UserMessagingPlatform", "Stored info not exists: ".concat(String.valueOf(str)));
                } else {
                    if (obj instanceof Boolean) {
                        string = true != ((Boolean) obj).booleanValue() ? "0" : "1";
                    } else if (obj instanceof Number) {
                        string = obj.toString();
                    } else if (obj instanceof String) {
                        string = (String) obj;
                    } else {
                        Log.d("UserMessagingPlatform", "Failed to fetch stored info: ".concat(String.valueOf(str)));
                    }
                    map.put(str, string);
                }
            }
        }
        return map;
    }
}
