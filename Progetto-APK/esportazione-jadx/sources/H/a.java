package H;

import B0.AbstractC0068s;
import E1.C0172g;
import E1.C0173h;
import E1.C0174i;
import E1.C0181p;
import E1.G;
import android.graphics.drawable.Icon;
import android.media.MediaRoute2Info;
import android.media.RouteDiscoveryPreference;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.ext.SdkExtensions;
import android.view.View;
import android.view.Window;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static Icon a(Uri uri) {
        return Icon.createWithAdaptiveBitmapContentUri(uri);
    }

    public static void b(int i8) {
        SdkExtensions.getExtensionVersion(i8);
    }

    public static ArrayList c(List list) {
        if (list == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MediaRoute2Info mediaRoute2InfoB = AbstractC0068s.b(it.next());
            if (mediaRoute2InfoB != null) {
                arrayList.add(mediaRoute2InfoB.getId());
            }
        }
        return arrayList;
    }

    public static CharSequence d(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.getStateDescription();
    }

    public static void e(Window window) {
        View decorView = window.getDecorView();
        decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 256);
        window.setDecorFitsSystemWindows(false);
    }

    public static void f(AccessibilityNodeInfo accessibilityNodeInfo, CharSequence charSequence) {
        accessibilityNodeInfo.setStateDescription(charSequence);
    }

    public static RouteDiscoveryPreference g(C0174i c0174i) {
        c0174i.a();
        C0181p c0181p = c0174i.f2753b;
        c0181p.a();
        if (!(!c0181p.f2797b.contains(null))) {
            return new RouteDiscoveryPreference.Builder(new ArrayList(), false).build();
        }
        boolean zB = c0174i.b();
        ArrayList arrayList = new ArrayList();
        c0174i.a();
        for (String str : c0174i.f2753b.b()) {
            str.getClass();
            switch (str) {
                case "android.media.intent.category.REMOTE_PLAYBACK":
                    str = "android.media.route.feature.REMOTE_PLAYBACK";
                    break;
                case "android.media.intent.category.LIVE_AUDIO":
                    str = "android.media.route.feature.LIVE_AUDIO";
                    break;
                case "android.media.intent.category.LIVE_VIDEO":
                    str = "android.media.route.feature.LIVE_VIDEO";
                    break;
            }
            arrayList.add(str);
        }
        return new RouteDiscoveryPreference.Builder(arrayList, zB).build();
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0093  */
    public static C0173h h(MediaRoute2Info mediaRoute2Info) {
        int i8;
        if (mediaRoute2Info == null) {
            return null;
        }
        C0172g c0172g = new C0172g(mediaRoute2Info.getId(), mediaRoute2Info.getName().toString());
        int connectionState = mediaRoute2Info.getConnectionState();
        Bundle bundle = c0172g.f2741a;
        bundle.putInt("connectionState", connectionState);
        bundle.putInt("volumeHandling", mediaRoute2Info.getVolumeHandling());
        bundle.putInt("volumeMax", mediaRoute2Info.getVolumeMax());
        bundle.putInt("volume", mediaRoute2Info.getVolume());
        Bundle extras = mediaRoute2Info.getExtras();
        if (extras == null) {
            bundle.putBundle("extras", null);
        } else {
            bundle.putBundle("extras", new Bundle(extras));
        }
        bundle.putBoolean("enabled", true);
        bundle.putBoolean("canDisconnect", false);
        if (Build.VERSION.SDK_INT >= 34) {
            bundle.putStringArrayList("deduplicationIds", new ArrayList<>(G.b(mediaRoute2Info)));
            int iC = G.c(mediaRoute2Info);
            if (iC != 2000) {
                switch (iC) {
                    case WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY /* 1001 */:
                        i8 = 1;
                        break;
                    case 1002:
                        i8 = 2;
                        break;
                    case 1003:
                        i8 = 4;
                        break;
                    case 1004:
                        i8 = 5;
                        break;
                    case WebSocketProtocol.CLOSE_NO_STATUS_CODE /* 1005 */:
                        i8 = 6;
                        break;
                    case 1006:
                        i8 = 7;
                        break;
                    case 1007:
                        i8 = 8;
                        break;
                    case 1008:
                        i8 = 9;
                        break;
                    case 1009:
                        i8 = 10;
                        break;
                    default:
                        i8 = 0;
                        break;
                }
            } else {
                i8 = 1000;
            }
        } else {
            i8 = 0;
        }
        CharSequence description = mediaRoute2Info.getDescription();
        if (description != null) {
            bundle.putString("status", description.toString());
        }
        Uri iconUri = mediaRoute2Info.getIconUri();
        if (iconUri != null) {
            bundle.putString("iconUri", iconUri.toString());
        }
        Bundle extras2 = mediaRoute2Info.getExtras();
        if (extras2 == null || !extras2.containsKey("androidx.mediarouter.media.KEY_EXTRAS") || !extras2.containsKey("androidx.mediarouter.media.KEY_DEVICE_TYPE") || !extras2.containsKey("androidx.mediarouter.media.KEY_CONTROL_FILTERS")) {
            return null;
        }
        Bundle bundle2 = extras2.getBundle("androidx.mediarouter.media.KEY_EXTRAS");
        if (bundle2 == null) {
            bundle.putBundle("extras", null);
        } else {
            bundle.putBundle("extras", new Bundle(bundle2));
        }
        if (i8 == 0) {
            i8 = extras2.getInt("androidx.mediarouter.media.KEY_DEVICE_TYPE", 0);
        }
        bundle.putInt("deviceType", i8);
        bundle.putInt("playbackType", extras2.getInt("androidx.mediarouter.media.KEY_PLAYBACK_TYPE", 1));
        ArrayList parcelableArrayList = extras2.getParcelableArrayList("androidx.mediarouter.media.KEY_CONTROL_FILTERS");
        if (parcelableArrayList != null) {
            c0172g.a(parcelableArrayList);
        }
        return c0172g.b();
    }
}
