package E1;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;

/* JADX INFO: renamed from: E1.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0173h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Bundle f2745a;

    public C0173h(Bundle bundle) {
        this.f2745a = bundle;
    }

    public final HashSet a() {
        Bundle bundle = this.f2745a;
        return !bundle.containsKey("allowedPackages") ? new HashSet() : new HashSet(bundle.getStringArrayList("allowedPackages"));
    }

    public final ArrayList b() {
        Bundle bundle = this.f2745a;
        return !bundle.containsKey("controlFilters") ? new ArrayList() : new ArrayList(bundle.getParcelableArrayList("controlFilters"));
    }

    public final ArrayList c() {
        Bundle bundle = this.f2745a;
        return !bundle.containsKey("groupMemberIds") ? new ArrayList() : new ArrayList(bundle.getStringArrayList("groupMemberIds"));
    }

    public final String d() {
        return this.f2745a.getString("id");
    }

    public final boolean e() {
        return (TextUtils.isEmpty(d()) || TextUtils.isEmpty(this.f2745a.getString("name")) || b().contains(null)) ? false : true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MediaRouteDescriptor{ id=");
        sb.append(d());
        sb.append(", groupMemberIds=");
        sb.append(c());
        sb.append(", name=");
        Bundle bundle = this.f2745a;
        sb.append(bundle.getString("name"));
        sb.append(", description=");
        sb.append(bundle.getString("status"));
        sb.append(", iconUri=");
        String string = bundle.getString("iconUri");
        sb.append(string == null ? null : Uri.parse(string));
        sb.append(", isEnabled=");
        sb.append(bundle.getBoolean("enabled", true));
        sb.append(", connectionState=");
        sb.append(bundle.getInt("connectionState", 0));
        sb.append(", controlFilters=");
        sb.append(Arrays.toString(b().toArray()));
        sb.append(", playbackType=");
        sb.append(bundle.getInt("playbackType", 1));
        sb.append(", playbackStream=");
        sb.append(bundle.getInt("playbackStream", -1));
        sb.append(", deviceType=");
        sb.append(bundle.getInt("deviceType"));
        sb.append(", volume=");
        sb.append(bundle.getInt("volume"));
        sb.append(", volumeMax=");
        sb.append(bundle.getInt("volumeMax"));
        sb.append(", volumeHandling=");
        sb.append(bundle.getInt("volumeHandling", 0));
        sb.append(", presentationDisplayId=");
        sb.append(bundle.getInt("presentationDisplayId", -1));
        sb.append(", extras=");
        sb.append(bundle.getBundle("extras"));
        sb.append(", isValid=");
        sb.append(e());
        sb.append(", minClientVersion=");
        sb.append(bundle.getInt("minClientVersion", 1));
        sb.append(", maxClientVersion=");
        sb.append(bundle.getInt("maxClientVersion", com.google.android.gms.common.api.d.API_PRIORITY_OTHER));
        sb.append(", isVisibilityPublic=");
        sb.append(bundle.getBoolean("isVisibilityPublic", true));
        sb.append(", allowedPackages=");
        sb.append(Arrays.toString(a().toArray()));
        sb.append(" }");
        return sb.toString();
    }
}
