package com.journeyapps.barcodescanner;

import B0.w0;
import O5.k;
import P5.i;
import Z3.C0433o;
import android.app.Activity;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import p096m2.l;
import p130q5.a;
import p130q5.c;
import p130q5.h;
import p161u5.e;
import p161u5.f;
import p161u5.g;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes2.dex */
public class CaptureActivity extends Activity {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public k f24563G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public DecoratedBarcodeView f24564H;

    /* JADX WARN: Code duplicated, block: B:102:0x0209  */
    /* JADX WARN: Code duplicated, block: B:17:0x0069  */
    /* JADX WARN: Code duplicated, block: B:44:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:45:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:54:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:84:0x0192  */
    /* JADX WARN: Code duplicated, block: B:88:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:91:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:94:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:98:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:99:0x01ff  */
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        boolean z7;
        String stringExtra;
        Set set;
        Set setNoneOf;
        Bundle extras;
        i iVar;
        String stringExtra2;
        int intExtra;
        c[] cVarArrValues;
        int length;
        int i8;
        c cVar;
        int i9;
        super.onCreate(bundle);
        setContentView(R.layout.zxing_capture);
        this.f24564H = (DecoratedBarcodeView) findViewById(R.id.zxing_barcode_scanner);
        DecoratedBarcodeView decoratedBarcodeView = this.f24564H;
        k kVar = new k(this, decoratedBarcodeView);
        this.f24563G = kVar;
        Intent intent = getIntent();
        getWindow().addFlags(128);
        if (bundle != null) {
            kVar.f5611c = bundle.getInt("SAVED_ORIENTATION_LOCK", -1);
        }
        if (intent != null) {
            if (intent.getBooleanExtra("SCAN_ORIENTATION_LOCKED", true)) {
                if (kVar.f5611c == -1) {
                    int rotation = getWindowManager().getDefaultDisplay().getRotation();
                    int i10 = getResources().getConfiguration().orientation;
                    if (i10 == 2) {
                        if (rotation == 0 || rotation == 1) {
                            i9 = 0;
                        } else {
                            i9 = 8;
                        }
                    } else if (i10 == 1) {
                        i9 = (rotation == 0 || rotation == 3) ? 1 : 9;
                    } else {
                        i9 = 0;
                    }
                    kVar.f5611c = i9;
                }
                setRequestedOrientation(kVar.f5611c);
            }
            if ("com.google.zxing.client.android.SCAN".equals(intent.getAction())) {
                Pattern pattern = e.f30515a;
                String stringExtra3 = intent.getStringExtra("SCAN_FORMATS");
                EnumMap enumMap = null;
                List listAsList = stringExtra3 != null ? Arrays.asList(e.f30515a.split(stringExtra3)) : null;
                String stringExtra4 = intent.getStringExtra("SCAN_MODE");
                if (listAsList != null) {
                    setNoneOf = EnumSet.noneOf(a.class);
                    try {
                        Iterator it = listAsList.iterator();
                        while (it.hasNext()) {
                            setNoneOf.add(a.valueOf((String) it.next()));
                        }
                    } catch (IllegalArgumentException unused) {
                        if (stringExtra4 != null) {
                            setNoneOf = (Set) e.f30516b.get(stringExtra4);
                        } else {
                            set = null;
                        }
                        int i11 = f.f30517a;
                        extras = intent.getExtras();
                        if (extras != null) {
                            enumMap = new EnumMap(c.class);
                            cVarArrValues = c.values();
                            length = cVarArrValues.length;
                            for (i8 = 0; i8 < length; i8++) {
                                cVar = cVarArrValues[i8];
                                if (cVar == c.f29600K) {
                                }
                            }
                            Log.i("f", "Hints from the Intent: " + enumMap);
                        }
                        EnumMap enumMap2 = enumMap;
                        iVar = new i();
                        if (intent.hasExtra("SCAN_CAMERA_ID")) {
                            iVar.f5960a = intExtra;
                        }
                        if (intent.hasExtra("TORCH_ENABLED")) {
                            decoratedBarcodeView.f24565G.setTorch(true);
                        }
                        stringExtra2 = intent.getStringExtra("PROMPT_MESSAGE");
                        if (stringExtra2 != null) {
                            decoratedBarcodeView.setStatusText(stringExtra2);
                        }
                        int intExtra2 = intent.getIntExtra("SCAN_TYPE", 0);
                        String stringExtra5 = intent.getStringExtra("CHARACTER_SET");
                        new h().e(enumMap2);
                        decoratedBarcodeView.f24565G.setCameraSettings(iVar);
                        decoratedBarcodeView.f24565G.setDecoderFactory(new w0(set, enumMap2, stringExtra5, intExtra2, 11));
                        if (!intent.getBooleanExtra("BEEP_ENABLED", true)) {
                            kVar.f5617i.f30514b = false;
                        }
                        if (intent.hasExtra("SHOW_MISSING_CAMERA_PERMISSION_DIALOG")) {
                            boolean booleanExtra = intent.getBooleanExtra("SHOW_MISSING_CAMERA_PERMISSION_DIALOG", true);
                            stringExtra = intent.getStringExtra("MISSING_CAMERA_PERMISSION_DIALOG_MESSAGE");
                            kVar.f5613e = booleanExtra;
                            if (stringExtra == null) {
                                stringExtra = HttpUrl.FRAGMENT_ENCODE_SET;
                            }
                            kVar.f5614f = stringExtra;
                        }
                        if (intent.hasExtra("TIMEOUT")) {
                            z7 = true;
                            kVar.f5618j.postDelayed(new O5.h(kVar, 1), intent.getLongExtra("TIMEOUT", 0L));
                        } else {
                            z7 = true;
                        }
                        if (intent.getBooleanExtra("BARCODE_IMAGE_ENABLED", false)) {
                            kVar.f5612d = z7;
                        }
                        k kVar2 = this.f24563G;
                        C0433o c0433o = kVar2.f5620l;
                        DecoratedBarcodeView decoratedBarcodeView2 = kVar2.f5610b;
                        BarcodeView barcodeView = decoratedBarcodeView2.f24565G;
                        l lVar = new l(decoratedBarcodeView2, c0433o, 25);
                        barcodeView.f24558j0 = 2;
                        barcodeView.f24559k0 = lVar;
                        barcodeView.h();
                    }
                    set = setNoneOf;
                } else if (stringExtra4 != null) {
                    setNoneOf = (Set) e.f30516b.get(stringExtra4);
                    set = setNoneOf;
                } else {
                    set = null;
                }
                int i12 = f.f30517a;
                extras = intent.getExtras();
                if (extras != null && !extras.isEmpty()) {
                    enumMap = new EnumMap(c.class);
                    cVarArrValues = c.values();
                    length = cVarArrValues.length;
                    while (i8 < length) {
                        cVar = cVarArrValues[i8];
                        if (cVar == c.f29600K && cVar != c.f29605P && cVar != c.f29598I) {
                            String strName = cVar.name();
                            if (extras.containsKey(strName)) {
                                Class cls = cVar.f29608G;
                                if (cls.equals(Void.class)) {
                                    enumMap.put(cVar, Boolean.TRUE);
                                } else {
                                    Object obj = extras.get(strName);
                                    if (cls.isInstance(obj)) {
                                        enumMap.put(cVar, obj);
                                    } else {
                                        Log.w("f", "Ignoring hint " + cVar + " because it is not assignable from " + obj);
                                    }
                                }
                            }
                        }
                    }
                    Log.i("f", "Hints from the Intent: " + enumMap);
                }
                EnumMap enumMap3 = enumMap;
                iVar = new i();
                if (intent.hasExtra("SCAN_CAMERA_ID") && (intExtra = intent.getIntExtra("SCAN_CAMERA_ID", -1)) >= 0) {
                    iVar.f5960a = intExtra;
                }
                if (intent.hasExtra("TORCH_ENABLED") && intent.getBooleanExtra("TORCH_ENABLED", false)) {
                    decoratedBarcodeView.f24565G.setTorch(true);
                }
                stringExtra2 = intent.getStringExtra("PROMPT_MESSAGE");
                if (stringExtra2 != null) {
                    decoratedBarcodeView.setStatusText(stringExtra2);
                }
                int intExtra3 = intent.getIntExtra("SCAN_TYPE", 0);
                String stringExtra6 = intent.getStringExtra("CHARACTER_SET");
                new h().e(enumMap3);
                decoratedBarcodeView.f24565G.setCameraSettings(iVar);
                decoratedBarcodeView.f24565G.setDecoderFactory(new w0(set, enumMap3, stringExtra6, intExtra3, 11));
            }
            if (!intent.getBooleanExtra("BEEP_ENABLED", true)) {
                kVar.f5617i.f30514b = false;
            }
            if (intent.hasExtra("SHOW_MISSING_CAMERA_PERMISSION_DIALOG")) {
                boolean booleanExtra2 = intent.getBooleanExtra("SHOW_MISSING_CAMERA_PERMISSION_DIALOG", true);
                stringExtra = intent.getStringExtra("MISSING_CAMERA_PERMISSION_DIALOG_MESSAGE");
                kVar.f5613e = booleanExtra2;
                if (stringExtra == null) {
                    stringExtra = HttpUrl.FRAGMENT_ENCODE_SET;
                }
                kVar.f5614f = stringExtra;
            }
            if (intent.hasExtra("TIMEOUT")) {
                z7 = true;
                kVar.f5618j.postDelayed(new O5.h(kVar, 1), intent.getLongExtra("TIMEOUT", 0L));
            } else {
                z7 = true;
            }
            if (intent.getBooleanExtra("BARCODE_IMAGE_ENABLED", false)) {
                kVar.f5612d = z7;
            }
        }
        k kVar3 = this.f24563G;
        C0433o c0433o2 = kVar3.f5620l;
        DecoratedBarcodeView decoratedBarcodeView3 = kVar3.f5610b;
        BarcodeView barcodeView2 = decoratedBarcodeView3.f24565G;
        l lVar2 = new l(decoratedBarcodeView3, c0433o2, 25);
        barcodeView2.f24558j0 = 2;
        barcodeView2.f24559k0 = lVar2;
        barcodeView2.h();
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        k kVar = this.f24563G;
        kVar.f5615g = true;
        kVar.f5616h.a();
        kVar.f5618j.removeCallbacksAndMessages(null);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i8, KeyEvent keyEvent) {
        return this.f24564H.onKeyDown(i8, keyEvent) || super.onKeyDown(i8, keyEvent);
    }

    @Override // android.app.Activity
    public final void onPause() {
        super.onPause();
        k kVar = this.f24563G;
        kVar.f5616h.a();
        BarcodeView barcodeView = kVar.f5610b.f24565G;
        P5.f cameraInstance = barcodeView.getCameraInstance();
        barcodeView.c();
        long jNanoTime = System.nanoTime();
        while (cameraInstance != null && !cameraInstance.f5938g && System.nanoTime() - jNanoTime <= 2000000000) {
            try {
                Thread.sleep(1L);
            } catch (InterruptedException unused) {
                return;
            }
        }
    }

    @Override // android.app.Activity
    public final void onRequestPermissionsResult(int i8, String[] strArr, int[] iArr) {
        k kVar = this.f24563G;
        kVar.getClass();
        if (i8 == 250) {
            if (iArr.length > 0 && iArr[0] == 0) {
                kVar.f5610b.f24565G.d();
                return;
            }
            Intent intent = new Intent("com.google.zxing.client.android.SCAN");
            intent.putExtra("MISSING_CAMERA_PERMISSION", true);
            kVar.f5609a.setResult(0, intent);
            if (kVar.f5613e) {
                kVar.b(kVar.f5614f);
            } else {
                kVar.a();
            }
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        k kVar = this.f24563G;
        int i8 = Build.VERSION.SDK_INT;
        DecoratedBarcodeView decoratedBarcodeView = kVar.f5610b;
        if (i8 >= 23) {
            Activity activity = kVar.f5609a;
            if (U4.a.b(activity, "android.permission.CAMERA") == 0) {
                decoratedBarcodeView.f24565G.d();
            } else if (!kVar.f5621m) {
                D.c.D(activity, new String[]{"android.permission.CAMERA"}, 250);
                kVar.f5621m = true;
            }
        } else {
            decoratedBarcodeView.f24565G.d();
        }
        g gVar = kVar.f5616h;
        if (!gVar.f30520c) {
            gVar.f30518a.registerReceiver(gVar.f30519b, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            gVar.f30520c = true;
        }
        gVar.f30521d.removeCallbacksAndMessages(null);
        if (gVar.f30523f) {
            gVar.f30521d.postDelayed(gVar.f30522e, 300000L);
        }
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("SAVED_ORIENTATION_LOCK", this.f24563G.f5611c);
    }
}
