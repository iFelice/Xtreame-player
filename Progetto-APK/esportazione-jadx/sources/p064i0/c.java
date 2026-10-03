package p064i0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;
import p096m2.l;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Object f25502f = new Object();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static c f25503g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f25504a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f25505b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f25506c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f25507d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final a f25508e;

    public c(Context context) {
        this.f25504a = context;
        this.f25508e = new a(this, context.getMainLooper(), 0);
    }

    public static c a(Context context) {
        c cVar;
        synchronized (f25502f) {
            try {
                if (f25503g == null) {
                    f25503g = new c(context.getApplicationContext());
                }
                cVar = f25503g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cVar;
    }

    public final void b(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.f25505b) {
            try {
                b bVar = new b(broadcastReceiver, intentFilter);
                ArrayList arrayList = (ArrayList) this.f25505b.get(broadcastReceiver);
                if (arrayList == null) {
                    arrayList = new ArrayList(1);
                    this.f25505b.put(broadcastReceiver, arrayList);
                }
                arrayList.add(bVar);
                for (int i8 = 0; i8 < intentFilter.countActions(); i8++) {
                    String action = intentFilter.getAction(i8);
                    ArrayList arrayList2 = (ArrayList) this.f25506c.get(action);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList(1);
                        this.f25506c.put(action, arrayList2);
                    }
                    arrayList2.add(bVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(Intent intent) {
        ArrayList arrayList;
        int i8;
        String str;
        String str2;
        synchronized (this.f25505b) {
            try {
                String action = intent.getAction();
                String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f25504a.getContentResolver());
                Uri data = intent.getData();
                String scheme = intent.getScheme();
                Set<String> categories = intent.getCategories();
                boolean z7 = (intent.getFlags() & 8) != 0;
                if (z7) {
                    Log.v("LocalBroadcastManager", "Resolving type " + strResolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
                }
                ArrayList arrayList2 = (ArrayList) this.f25506c.get(intent.getAction());
                if (arrayList2 != null) {
                    if (z7) {
                        Log.v("LocalBroadcastManager", "Action list: " + arrayList2);
                    }
                    ArrayList arrayList3 = null;
                    int i9 = 0;
                    while (i9 < arrayList2.size()) {
                        b bVar = (b) arrayList2.get(i9);
                        if (z7) {
                            Log.v("LocalBroadcastManager", "Matching against filter " + bVar.f25498a);
                        }
                        if (bVar.f25500c) {
                            if (z7) {
                                Log.v("LocalBroadcastManager", "  Filter's target already added");
                            }
                            arrayList = arrayList2;
                            i8 = i9;
                            str = action;
                        } else {
                            arrayList = arrayList2;
                            i8 = i9;
                            str = action;
                            int iMatch = bVar.f25498a.match(action, strResolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                            if (iMatch >= 0) {
                                if (z7) {
                                    Log.v("LocalBroadcastManager", "  Filter matched!  match=0x" + Integer.toHexString(iMatch));
                                }
                                if (arrayList3 == null) {
                                    arrayList3 = new ArrayList();
                                }
                                arrayList3.add(bVar);
                                bVar.f25500c = true;
                            } else if (z7) {
                                if (iMatch == -4) {
                                    str2 = "category";
                                } else if (iMatch == -3) {
                                    str2 = "action";
                                } else if (iMatch != -2) {
                                    str2 = iMatch != -1 ? "unknown reason" : "type";
                                } else {
                                    str2 = "data";
                                }
                                Log.v("LocalBroadcastManager", "  Filter did not match: " + str2);
                            }
                        }
                        i9 = i8 + 1;
                        arrayList2 = arrayList;
                        action = str;
                    }
                    if (arrayList3 != null) {
                        for (int i10 = 0; i10 < arrayList3.size(); i10++) {
                            ((b) arrayList3.get(i10)).f25500c = false;
                        }
                        this.f25507d.add(new l(2, intent, arrayList3));
                        if (!this.f25508e.hasMessages(1)) {
                            this.f25508e.sendEmptyMessage(1);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d(BroadcastReceiver broadcastReceiver) {
        synchronized (this.f25505b) {
            try {
                ArrayList arrayList = (ArrayList) this.f25505b.remove(broadcastReceiver);
                if (arrayList == null) {
                    return;
                }
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    b bVar = (b) arrayList.get(size);
                    bVar.f25501d = true;
                    for (int i8 = 0; i8 < bVar.f25498a.countActions(); i8++) {
                        String action = bVar.f25498a.getAction(i8);
                        ArrayList arrayList2 = (ArrayList) this.f25506c.get(action);
                        if (arrayList2 != null) {
                            for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                                b bVar2 = (b) arrayList2.get(size2);
                                if (bVar2.f25499b == broadcastReceiver) {
                                    bVar2.f25501d = true;
                                    arrayList2.remove(size2);
                                }
                            }
                            if (arrayList2.size() <= 0) {
                                this.f25506c.remove(action);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
