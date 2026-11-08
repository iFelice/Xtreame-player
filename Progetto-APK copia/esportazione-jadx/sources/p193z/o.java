package p193z;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.api.Endpoint;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import com.google.protobuf.DescriptorProtos$MethodOptions;
import com.google.protobuf.U2;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashMap;
import okhttp3.internal.ws.WebSocketProtocol;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.xmlpull.v1.XmlPullParserException;
import p163v.a;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f31681d = {0, 4, 8};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final SparseIntArray f31682e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final SparseIntArray f31683f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f31684a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f31685b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f31686c = new HashMap();

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f31682e = sparseIntArray;
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f31683f = sparseIntArray2;
        sparseIntArray.append(82, 25);
        sparseIntArray.append(83, 26);
        sparseIntArray.append(85, 29);
        sparseIntArray.append(86, 30);
        sparseIntArray.append(92, 36);
        sparseIntArray.append(91, 35);
        sparseIntArray.append(63, 4);
        sparseIntArray.append(62, 3);
        sparseIntArray.append(58, 1);
        sparseIntArray.append(60, 91);
        sparseIntArray.append(59, 92);
        sparseIntArray.append(Endpoint.TARGET_FIELD_NUMBER, 6);
        sparseIntArray.append(102, 7);
        sparseIntArray.append(70, 17);
        sparseIntArray.append(71, 18);
        sparseIntArray.append(72, 19);
        sparseIntArray.append(54, 99);
        sparseIntArray.append(0, 27);
        sparseIntArray.append(87, 32);
        sparseIntArray.append(88, 33);
        sparseIntArray.append(69, 10);
        sparseIntArray.append(68, 9);
        sparseIntArray.append(106, 13);
        sparseIntArray.append(109, 16);
        sparseIntArray.append(107, 14);
        sparseIntArray.append(104, 11);
        sparseIntArray.append(108, 15);
        sparseIntArray.append(105, 12);
        sparseIntArray.append(95, 40);
        sparseIntArray.append(80, 39);
        sparseIntArray.append(79, 41);
        sparseIntArray.append(94, 42);
        sparseIntArray.append(78, 20);
        sparseIntArray.append(93, 37);
        sparseIntArray.append(67, 5);
        sparseIntArray.append(81, 87);
        sparseIntArray.append(90, 87);
        sparseIntArray.append(84, 87);
        sparseIntArray.append(61, 87);
        sparseIntArray.append(57, 87);
        sparseIntArray.append(5, 24);
        sparseIntArray.append(7, 28);
        sparseIntArray.append(23, 31);
        sparseIntArray.append(24, 8);
        sparseIntArray.append(6, 34);
        sparseIntArray.append(8, 2);
        sparseIntArray.append(3, 23);
        sparseIntArray.append(4, 21);
        sparseIntArray.append(96, 95);
        sparseIntArray.append(73, 96);
        sparseIntArray.append(2, 22);
        sparseIntArray.append(13, 43);
        sparseIntArray.append(26, 44);
        sparseIntArray.append(21, 45);
        sparseIntArray.append(22, 46);
        sparseIntArray.append(20, 60);
        sparseIntArray.append(18, 47);
        sparseIntArray.append(19, 48);
        sparseIntArray.append(14, 49);
        sparseIntArray.append(15, 50);
        sparseIntArray.append(16, 51);
        sparseIntArray.append(17, 52);
        sparseIntArray.append(25, 53);
        sparseIntArray.append(97, 54);
        sparseIntArray.append(74, 55);
        sparseIntArray.append(98, 56);
        sparseIntArray.append(75, 57);
        sparseIntArray.append(99, 58);
        sparseIntArray.append(76, 59);
        sparseIntArray.append(64, 61);
        sparseIntArray.append(66, 62);
        sparseIntArray.append(65, 63);
        sparseIntArray.append(28, 64);
        sparseIntArray.append(121, 65);
        sparseIntArray.append(35, 66);
        sparseIntArray.append(122, 67);
        sparseIntArray.append(113, 79);
        sparseIntArray.append(1, 38);
        sparseIntArray.append(112, 68);
        sparseIntArray.append(100, 69);
        sparseIntArray.append(77, 70);
        sparseIntArray.append(111, 97);
        sparseIntArray.append(32, 71);
        sparseIntArray.append(30, 72);
        sparseIntArray.append(31, 73);
        sparseIntArray.append(33, 74);
        sparseIntArray.append(29, 75);
        sparseIntArray.append(114, 76);
        sparseIntArray.append(89, 77);
        sparseIntArray.append(123, 78);
        sparseIntArray.append(56, 80);
        sparseIntArray.append(55, 81);
        sparseIntArray.append(116, 82);
        sparseIntArray.append(120, 83);
        sparseIntArray.append(119, 84);
        sparseIntArray.append(118, 85);
        sparseIntArray.append(117, 86);
        sparseIntArray2.append(85, 6);
        sparseIntArray2.append(85, 7);
        sparseIntArray2.append(0, 27);
        sparseIntArray2.append(89, 13);
        sparseIntArray2.append(92, 16);
        sparseIntArray2.append(90, 14);
        sparseIntArray2.append(87, 11);
        sparseIntArray2.append(91, 15);
        sparseIntArray2.append(88, 12);
        sparseIntArray2.append(78, 40);
        sparseIntArray2.append(71, 39);
        sparseIntArray2.append(70, 41);
        sparseIntArray2.append(77, 42);
        sparseIntArray2.append(69, 20);
        sparseIntArray2.append(76, 37);
        sparseIntArray2.append(60, 5);
        sparseIntArray2.append(72, 87);
        sparseIntArray2.append(75, 87);
        sparseIntArray2.append(73, 87);
        sparseIntArray2.append(57, 87);
        sparseIntArray2.append(56, 87);
        sparseIntArray2.append(5, 24);
        sparseIntArray2.append(7, 28);
        sparseIntArray2.append(23, 31);
        sparseIntArray2.append(24, 8);
        sparseIntArray2.append(6, 34);
        sparseIntArray2.append(8, 2);
        sparseIntArray2.append(3, 23);
        sparseIntArray2.append(4, 21);
        sparseIntArray2.append(79, 95);
        sparseIntArray2.append(64, 96);
        sparseIntArray2.append(2, 22);
        sparseIntArray2.append(13, 43);
        sparseIntArray2.append(26, 44);
        sparseIntArray2.append(21, 45);
        sparseIntArray2.append(22, 46);
        sparseIntArray2.append(20, 60);
        sparseIntArray2.append(18, 47);
        sparseIntArray2.append(19, 48);
        sparseIntArray2.append(14, 49);
        sparseIntArray2.append(15, 50);
        sparseIntArray2.append(16, 51);
        sparseIntArray2.append(17, 52);
        sparseIntArray2.append(25, 53);
        sparseIntArray2.append(80, 54);
        sparseIntArray2.append(65, 55);
        sparseIntArray2.append(81, 56);
        sparseIntArray2.append(66, 57);
        sparseIntArray2.append(82, 58);
        sparseIntArray2.append(67, 59);
        sparseIntArray2.append(59, 62);
        sparseIntArray2.append(58, 63);
        sparseIntArray2.append(28, 64);
        sparseIntArray2.append(105, 65);
        sparseIntArray2.append(34, 66);
        sparseIntArray2.append(106, 67);
        sparseIntArray2.append(96, 79);
        sparseIntArray2.append(1, 38);
        sparseIntArray2.append(97, 98);
        sparseIntArray2.append(95, 68);
        sparseIntArray2.append(83, 69);
        sparseIntArray2.append(68, 70);
        sparseIntArray2.append(32, 71);
        sparseIntArray2.append(30, 72);
        sparseIntArray2.append(31, 73);
        sparseIntArray2.append(33, 74);
        sparseIntArray2.append(29, 75);
        sparseIntArray2.append(98, 76);
        sparseIntArray2.append(74, 77);
        sparseIntArray2.append(107, 78);
        sparseIntArray2.append(55, 80);
        sparseIntArray2.append(54, 81);
        sparseIntArray2.append(100, 82);
        sparseIntArray2.append(104, 83);
        sparseIntArray2.append(103, 84);
        sparseIntArray2.append(102, 85);
        sparseIntArray2.append(Endpoint.TARGET_FIELD_NUMBER, 86);
        sparseIntArray2.append(94, 97);
    }

    public static int[] b(a aVar, String str) {
        int iIntValue;
        HashMap map;
        String[] strArrSplit = str.split(",");
        Context context = aVar.getContext();
        int[] iArr = new int[strArrSplit.length];
        int i8 = 0;
        int i9 = 0;
        while (i8 < strArrSplit.length) {
            String strTrim = strArrSplit[i8].trim();
            Object obj = null;
            try {
                iIntValue = q.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
                iIntValue = 0;
            }
            if (iIntValue == 0) {
                iIntValue = context.getResources().getIdentifier(strTrim, "id", context.getPackageName());
            }
            if (iIntValue == 0 && aVar.isInEditMode() && (aVar.getParent() instanceof ConstraintLayout)) {
                ConstraintLayout constraintLayout = (ConstraintLayout) aVar.getParent();
                constraintLayout.getClass();
                if ((strTrim instanceof String) && (map = constraintLayout.f8962S) != null && map.containsKey(strTrim)) {
                    obj = constraintLayout.f8962S.get(strTrim);
                }
                if (obj != null && (obj instanceof Integer)) {
                    iIntValue = ((Integer) obj).intValue();
                }
            }
            iArr[i9] = iIntValue;
            i8++;
            i9++;
        }
        return i9 != strArrSplit.length ? Arrays.copyOf(iArr, i9) : iArr;
    }

    public static j c(Context context, AttributeSet attributeSet, boolean z7) {
        int i8;
        String str;
        String str2;
        SparseIntArray sparseIntArray;
        String str3;
        j jVar = new j();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, z7 ? r.f31689c : r.f31687a);
        int[] iArr = f31681d;
        SparseIntArray sparseIntArray2 = f31682e;
        String[] strArr = a.f30545a;
        m mVar = jVar.f31580b;
        n nVar = jVar.f31583e;
        l lVar = jVar.f31581c;
        k kVar = jVar.f31582d;
        String str4 = "Unknown attribute 0x";
        if (z7) {
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            i iVar = new i();
            iVar.f31567a = new int[10];
            iVar.f31568b = new int[10];
            iVar.f31569c = 0;
            iVar.f31570d = new int[10];
            iVar.f31571e = new float[10];
            iVar.f31572f = 0;
            iVar.f31573g = new int[5];
            iVar.f31574h = new String[5];
            iVar.f31575i = 0;
            iVar.f31576j = new int[4];
            iVar.f31577k = new boolean[4];
            iVar.f31578l = 0;
            lVar.getClass();
            kVar.getClass();
            mVar.getClass();
            nVar.getClass();
            int i9 = 0;
            while (i9 < indexCount) {
                int index = typedArrayObtainStyledAttributes.getIndex(i9);
                int i10 = indexCount;
                switch (f31683f.get(index)) {
                    case 2:
                        str3 = str4;
                        iVar.b(2, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, kVar.f31594I));
                        continue;
                        i9++;
                        indexCount = i10;
                        str4 = str3;
                        break;
                    case 3:
                    case 4:
                    case 9:
                    case 10:
                    case 25:
                    case Service.BILLING_FIELD_NUMBER /* 26 */:
                    case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                    case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                    case 32:
                    case 33:
                    case 35:
                    case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                    case 61:
                    case 88:
                    case 89:
                    case 90:
                    case 91:
                    case 92:
                    default:
                        StringBuilder sb = new StringBuilder(str4);
                        str3 = str4;
                        sb.append(Integer.toHexString(index));
                        sb.append("   ");
                        sb.append(sparseIntArray2.get(index));
                        Log.w("ConstraintSet", sb.toString());
                        break;
                    case 5:
                        str3 = str4;
                        iVar.c(5, typedArrayObtainStyledAttributes.getString(index));
                        continue;
                        i9++;
                        indexCount = i10;
                        str4 = str3;
                        break;
                    case 6:
                        str3 = str4;
                        iVar.b(6, typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, kVar.f31588C));
                        break;
                    case 7:
                        str3 = str4;
                        iVar.b(7, typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, kVar.f31589D));
                        break;
                    case 8:
                        str3 = str4;
                        iVar.b(8, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, kVar.f31595J));
                        break;
                    case 11:
                        str3 = str4;
                        iVar.b(11, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, kVar.f31601P));
                        break;
                    case 12:
                        str3 = str4;
                        iVar.b(12, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, kVar.f31602Q));
                        break;
                    case 13:
                        str3 = str4;
                        iVar.b(13, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, kVar.f31598M));
                        break;
                    case 14:
                        str3 = str4;
                        iVar.b(14, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, kVar.f31600O));
                        break;
                    case 15:
                        str3 = str4;
                        iVar.b(15, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, kVar.f31603R));
                        break;
                    case 16:
                        str3 = str4;
                        iVar.b(16, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, kVar.f31599N));
                        break;
                    case 17:
                        str3 = str4;
                        iVar.b(17, typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, kVar.f31618d));
                        break;
                    case 18:
                        str3 = str4;
                        iVar.b(18, typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, kVar.f31620e));
                        break;
                    case 19:
                        str3 = str4;
                        iVar.a(19, typedArrayObtainStyledAttributes.getFloat(index, kVar.f31622f));
                        break;
                    case 20:
                        str3 = str4;
                        iVar.a(20, typedArrayObtainStyledAttributes.getFloat(index, kVar.f31649w));
                        break;
                    case 21:
                        str3 = str4;
                        iVar.b(21, typedArrayObtainStyledAttributes.getLayoutDimension(index, kVar.f31616c));
                        break;
                    case 22:
                        str3 = str4;
                        iVar.b(22, iArr[typedArrayObtainStyledAttributes.getInt(index, mVar.f31663a)]);
                        break;
                    case 23:
                        str3 = str4;
                        iVar.b(23, typedArrayObtainStyledAttributes.getLayoutDimension(index, kVar.f31614b));
                        break;
                    case 24:
                        str3 = str4;
                        iVar.b(24, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, kVar.f31591F));
                        break;
                    case 27:
                        str3 = str4;
                        iVar.b(27, typedArrayObtainStyledAttributes.getInt(index, kVar.f31590E));
                        break;
                    case Service.MONITORING_FIELD_NUMBER /* 28 */:
                        str3 = str4;
                        iVar.b(28, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, kVar.f31592G));
                        break;
                    case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                        str3 = str4;
                        iVar.b(31, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, kVar.f31596K));
                        break;
                    case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                        str3 = str4;
                        iVar.b(34, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, kVar.f31593H));
                        break;
                    case 37:
                        str3 = str4;
                        iVar.a(37, typedArrayObtainStyledAttributes.getFloat(index, kVar.f31650x));
                        break;
                    case 38:
                        str3 = str4;
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, jVar.f31579a);
                        jVar.f31579a = resourceId;
                        iVar.b(38, resourceId);
                        break;
                    case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                        str3 = str4;
                        iVar.a(39, typedArrayObtainStyledAttributes.getFloat(index, kVar.f31606U));
                        break;
                    case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                        str3 = str4;
                        iVar.a(40, typedArrayObtainStyledAttributes.getFloat(index, kVar.f31605T));
                        break;
                    case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                        str3 = str4;
                        iVar.b(41, typedArrayObtainStyledAttributes.getInt(index, kVar.f31607V));
                        break;
                    case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                        str3 = str4;
                        iVar.b(42, typedArrayObtainStyledAttributes.getInt(index, kVar.f31608W));
                        break;
                    case 43:
                        str3 = str4;
                        iVar.a(43, typedArrayObtainStyledAttributes.getFloat(index, mVar.f31665c));
                        break;
                    case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                        str3 = str4;
                        iVar.d(44, true);
                        iVar.a(44, typedArrayObtainStyledAttributes.getDimension(index, nVar.f31680m));
                        break;
                    case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                        str3 = str4;
                        iVar.a(45, typedArrayObtainStyledAttributes.getFloat(index, nVar.f31669b));
                        break;
                    case 46:
                        str3 = str4;
                        iVar.a(46, typedArrayObtainStyledAttributes.getFloat(index, nVar.f31670c));
                        break;
                    case 47:
                        str3 = str4;
                        iVar.a(47, typedArrayObtainStyledAttributes.getFloat(index, nVar.f31671d));
                        break;
                    case 48:
                        str3 = str4;
                        iVar.a(48, typedArrayObtainStyledAttributes.getFloat(index, nVar.f31672e));
                        break;
                    case 49:
                        str3 = str4;
                        iVar.a(49, typedArrayObtainStyledAttributes.getDimension(index, nVar.f31673f));
                        break;
                    case 50:
                        str3 = str4;
                        iVar.a(50, typedArrayObtainStyledAttributes.getDimension(index, nVar.f31674g));
                        break;
                    case 51:
                        str3 = str4;
                        iVar.a(51, typedArrayObtainStyledAttributes.getDimension(index, nVar.f31676i));
                        break;
                    case 52:
                        str3 = str4;
                        iVar.a(52, typedArrayObtainStyledAttributes.getDimension(index, nVar.f31677j));
                        break;
                    case 53:
                        str3 = str4;
                        iVar.a(53, typedArrayObtainStyledAttributes.getDimension(index, nVar.f31678k));
                        break;
                    case 54:
                        str3 = str4;
                        iVar.b(54, typedArrayObtainStyledAttributes.getInt(index, kVar.f31609X));
                        break;
                    case 55:
                        str3 = str4;
                        iVar.b(55, typedArrayObtainStyledAttributes.getInt(index, kVar.f31610Y));
                        break;
                    case 56:
                        str3 = str4;
                        iVar.b(56, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, kVar.f31611Z));
                        break;
                    case 57:
                        str3 = str4;
                        iVar.b(57, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, kVar.f31613a0));
                        break;
                    case 58:
                        str3 = str4;
                        iVar.b(58, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, kVar.f31615b0));
                        break;
                    case 59:
                        str3 = str4;
                        iVar.b(59, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, kVar.f31617c0));
                        break;
                    case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                        str3 = str4;
                        iVar.a(60, typedArrayObtainStyledAttributes.getFloat(index, nVar.f31668a));
                        break;
                    case 62:
                        str3 = str4;
                        iVar.b(62, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, kVar.f31586A));
                        break;
                    case 63:
                        str3 = str4;
                        iVar.a(63, typedArrayObtainStyledAttributes.getFloat(index, kVar.f31587B));
                        break;
                    case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                        str3 = str4;
                        iVar.b(64, e(typedArrayObtainStyledAttributes, index, lVar.f31654a));
                        break;
                    case 65:
                        str3 = str4;
                        if (typedArrayObtainStyledAttributes.peekValue(index).type != 3) {
                            iVar.c(65, strArr[typedArrayObtainStyledAttributes.getInteger(index, 0)]);
                        } else {
                            iVar.c(65, typedArrayObtainStyledAttributes.getString(index));
                        }
                        break;
                    case 66:
                        str3 = str4;
                        iVar.b(66, typedArrayObtainStyledAttributes.getInt(index, 0));
                        break;
                    case 67:
                        str3 = str4;
                        iVar.a(67, typedArrayObtainStyledAttributes.getFloat(index, lVar.f31658e));
                        break;
                    case 68:
                        str3 = str4;
                        iVar.a(68, typedArrayObtainStyledAttributes.getFloat(index, mVar.f31666d));
                        break;
                    case 69:
                        str3 = str4;
                        iVar.a(69, typedArrayObtainStyledAttributes.getFloat(index, 1.0f));
                        break;
                    case 70:
                        str3 = str4;
                        iVar.a(70, typedArrayObtainStyledAttributes.getFloat(index, 1.0f));
                        break;
                    case 71:
                        str3 = str4;
                        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                        break;
                    case 72:
                        str3 = str4;
                        iVar.b(72, typedArrayObtainStyledAttributes.getInt(index, kVar.f31623f0));
                        break;
                    case 73:
                        str3 = str4;
                        iVar.b(73, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, kVar.f31625g0));
                        break;
                    case 74:
                        str3 = str4;
                        iVar.c(74, typedArrayObtainStyledAttributes.getString(index));
                        break;
                    case 75:
                        str3 = str4;
                        iVar.d(75, typedArrayObtainStyledAttributes.getBoolean(index, kVar.f31639n0));
                        break;
                    case 76:
                        str3 = str4;
                        iVar.b(76, typedArrayObtainStyledAttributes.getInt(index, lVar.f31656c));
                        break;
                    case 77:
                        str3 = str4;
                        iVar.c(77, typedArrayObtainStyledAttributes.getString(index));
                        break;
                    case 78:
                        str3 = str4;
                        iVar.b(78, typedArrayObtainStyledAttributes.getInt(index, mVar.f31664b));
                        break;
                    case 79:
                        str3 = str4;
                        iVar.a(79, typedArrayObtainStyledAttributes.getFloat(index, lVar.f31657d));
                        break;
                    case 80:
                        str3 = str4;
                        iVar.d(80, typedArrayObtainStyledAttributes.getBoolean(index, kVar.f31635l0));
                        break;
                    case 81:
                        str3 = str4;
                        iVar.d(81, typedArrayObtainStyledAttributes.getBoolean(index, kVar.f31637m0));
                        break;
                    case 82:
                        str3 = str4;
                        iVar.b(82, typedArrayObtainStyledAttributes.getInteger(index, lVar.f31655b));
                        break;
                    case 83:
                        str3 = str4;
                        iVar.b(83, e(typedArrayObtainStyledAttributes, index, nVar.f31675h));
                        break;
                    case 84:
                        str3 = str4;
                        iVar.b(84, typedArrayObtainStyledAttributes.getInteger(index, lVar.f31660g));
                        break;
                    case 85:
                        str3 = str4;
                        iVar.a(85, typedArrayObtainStyledAttributes.getFloat(index, lVar.f31659f));
                        break;
                    case 86:
                        str3 = str4;
                        int i11 = typedArrayObtainStyledAttributes.peekValue(index).type;
                        if (i11 == 1) {
                            int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                            lVar.f31662i = resourceId2;
                            iVar.b(89, resourceId2);
                            if (lVar.f31662i != -1) {
                                iVar.b(88, -2);
                            }
                        } else if (i11 != 3) {
                            iVar.b(88, typedArrayObtainStyledAttributes.getInteger(index, lVar.f31662i));
                        } else {
                            String string = typedArrayObtainStyledAttributes.getString(index);
                            lVar.f31661h = string;
                            iVar.c(90, string);
                            if (lVar.f31661h.indexOf(MqttTopic.TOPIC_LEVEL_SEPARATOR) <= 0) {
                                iVar.b(88, -1);
                            } else {
                                int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                                lVar.f31662i = resourceId3;
                                iVar.b(89, resourceId3);
                                iVar.b(88, -2);
                            }
                        }
                        break;
                    case 87:
                        str3 = str4;
                        Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray2.get(index));
                        break;
                    case 93:
                        str3 = str4;
                        iVar.b(93, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, kVar.f31597L));
                        break;
                    case 94:
                        str3 = str4;
                        iVar.b(94, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, kVar.f31604S));
                        break;
                    case 95:
                        str3 = str4;
                        f(iVar, typedArrayObtainStyledAttributes, index, 0);
                        break;
                    case 96:
                        str3 = str4;
                        f(iVar, typedArrayObtainStyledAttributes, index, 1);
                        break;
                    case 97:
                        str3 = str4;
                        iVar.b(97, typedArrayObtainStyledAttributes.getInt(index, kVar.f31641o0));
                        break;
                    case 98:
                        str3 = str4;
                        int i12 = p186y.a.f31228W;
                        if (typedArrayObtainStyledAttributes.peekValue(index).type != 3) {
                            jVar.f31579a = typedArrayObtainStyledAttributes.getResourceId(index, jVar.f31579a);
                        } else {
                            typedArrayObtainStyledAttributes.getString(index);
                        }
                        break;
                    case 99:
                        str3 = str4;
                        iVar.d(99, typedArrayObtainStyledAttributes.getBoolean(index, kVar.f31624g));
                        break;
                }
                i9++;
                indexCount = i10;
                str4 = str3;
            }
        } else {
            String str5 = "CURRENTLY UNSUPPORTED";
            String str6 = "Unknown attribute 0x";
            int indexCount2 = typedArrayObtainStyledAttributes.getIndexCount();
            int i13 = 0;
            while (i13 < indexCount2) {
                int index2 = typedArrayObtainStyledAttributes.getIndex(i13);
                if (index2 != 1 && 23 != index2 && 24 != index2) {
                    lVar.getClass();
                    kVar.getClass();
                    mVar.getClass();
                    nVar.getClass();
                }
                switch (sparseIntArray2.get(index2)) {
                    case 1:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31642p = e(typedArrayObtainStyledAttributes, index2, kVar.f31642p);
                        break;
                    case 2:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31594I = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, kVar.f31594I);
                        break;
                    case 3:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31640o = e(typedArrayObtainStyledAttributes, index2, kVar.f31640o);
                        break;
                    case 4:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31638n = e(typedArrayObtainStyledAttributes, index2, kVar.f31638n);
                        break;
                    case 5:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31651y = typedArrayObtainStyledAttributes.getString(index2);
                        break;
                    case 6:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31588C = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index2, kVar.f31588C);
                        break;
                    case 7:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31589D = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index2, kVar.f31589D);
                        break;
                    case 8:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31595J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, kVar.f31595J);
                        break;
                    case 9:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31648v = e(typedArrayObtainStyledAttributes, index2, kVar.f31648v);
                        break;
                    case 10:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31647u = e(typedArrayObtainStyledAttributes, index2, kVar.f31647u);
                        break;
                    case 11:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31601P = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, kVar.f31601P);
                        break;
                    case 12:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31602Q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, kVar.f31602Q);
                        break;
                    case 13:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31598M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, kVar.f31598M);
                        break;
                    case 14:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31600O = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, kVar.f31600O);
                        break;
                    case 15:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31603R = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, kVar.f31603R);
                        break;
                    case 16:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31599N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, kVar.f31599N);
                        break;
                    case 17:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31618d = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index2, kVar.f31618d);
                        break;
                    case 18:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31620e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index2, kVar.f31620e);
                        break;
                    case 19:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31622f = typedArrayObtainStyledAttributes.getFloat(index2, kVar.f31622f);
                        break;
                    case 20:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31649w = typedArrayObtainStyledAttributes.getFloat(index2, kVar.f31649w);
                        break;
                    case 21:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31616c = typedArrayObtainStyledAttributes.getLayoutDimension(index2, kVar.f31616c);
                        break;
                    case 22:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        mVar.f31663a = iArr[typedArrayObtainStyledAttributes.getInt(index2, mVar.f31663a)];
                        break;
                    case 23:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31614b = typedArrayObtainStyledAttributes.getLayoutDimension(index2, kVar.f31614b);
                        break;
                    case 24:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31591F = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, kVar.f31591F);
                        break;
                    case 25:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31626h = e(typedArrayObtainStyledAttributes, index2, kVar.f31626h);
                        break;
                    case Service.BILLING_FIELD_NUMBER /* 26 */:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31628i = e(typedArrayObtainStyledAttributes, index2, kVar.f31628i);
                        break;
                    case 27:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31590E = typedArrayObtainStyledAttributes.getInt(index2, kVar.f31590E);
                        break;
                    case Service.MONITORING_FIELD_NUMBER /* 28 */:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31592G = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, kVar.f31592G);
                        break;
                    case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31630j = e(typedArrayObtainStyledAttributes, index2, kVar.f31630j);
                        break;
                    case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31632k = e(typedArrayObtainStyledAttributes, index2, kVar.f31632k);
                        break;
                    case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31596K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, kVar.f31596K);
                        break;
                    case 32:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31645s = e(typedArrayObtainStyledAttributes, index2, kVar.f31645s);
                        break;
                    case 33:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31646t = e(typedArrayObtainStyledAttributes, index2, kVar.f31646t);
                        break;
                    case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31593H = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, kVar.f31593H);
                        break;
                    case 35:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31636m = e(typedArrayObtainStyledAttributes, index2, kVar.f31636m);
                        break;
                    case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31634l = e(typedArrayObtainStyledAttributes, index2, kVar.f31634l);
                        break;
                    case 37:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31650x = typedArrayObtainStyledAttributes.getFloat(index2, kVar.f31650x);
                        break;
                    case 38:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        jVar.f31579a = typedArrayObtainStyledAttributes.getResourceId(index2, jVar.f31579a);
                        break;
                    case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31606U = typedArrayObtainStyledAttributes.getFloat(index2, kVar.f31606U);
                        break;
                    case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31605T = typedArrayObtainStyledAttributes.getFloat(index2, kVar.f31605T);
                        break;
                    case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31607V = typedArrayObtainStyledAttributes.getInt(index2, kVar.f31607V);
                        break;
                    case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31608W = typedArrayObtainStyledAttributes.getInt(index2, kVar.f31608W);
                        break;
                    case 43:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        mVar.f31665c = typedArrayObtainStyledAttributes.getFloat(index2, mVar.f31665c);
                        break;
                    case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        nVar.f31679l = true;
                        nVar.f31680m = typedArrayObtainStyledAttributes.getDimension(index2, nVar.f31680m);
                        break;
                    case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        nVar.f31669b = typedArrayObtainStyledAttributes.getFloat(index2, nVar.f31669b);
                        break;
                    case 46:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        nVar.f31670c = typedArrayObtainStyledAttributes.getFloat(index2, nVar.f31670c);
                        break;
                    case 47:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        nVar.f31671d = typedArrayObtainStyledAttributes.getFloat(index2, nVar.f31671d);
                        break;
                    case 48:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        nVar.f31672e = typedArrayObtainStyledAttributes.getFloat(index2, nVar.f31672e);
                        break;
                    case 49:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        nVar.f31673f = typedArrayObtainStyledAttributes.getDimension(index2, nVar.f31673f);
                        break;
                    case 50:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        nVar.f31674g = typedArrayObtainStyledAttributes.getDimension(index2, nVar.f31674g);
                        break;
                    case 51:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        nVar.f31676i = typedArrayObtainStyledAttributes.getDimension(index2, nVar.f31676i);
                        break;
                    case 52:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        nVar.f31677j = typedArrayObtainStyledAttributes.getDimension(index2, nVar.f31677j);
                        break;
                    case 53:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        nVar.f31678k = typedArrayObtainStyledAttributes.getDimension(index2, nVar.f31678k);
                        break;
                    case 54:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31609X = typedArrayObtainStyledAttributes.getInt(index2, kVar.f31609X);
                        break;
                    case 55:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31610Y = typedArrayObtainStyledAttributes.getInt(index2, kVar.f31610Y);
                        break;
                    case 56:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31611Z = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, kVar.f31611Z);
                        break;
                    case 57:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31613a0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, kVar.f31613a0);
                        break;
                    case 58:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31615b0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, kVar.f31615b0);
                        break;
                    case 59:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31617c0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, kVar.f31617c0);
                        break;
                    case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        nVar.f31668a = typedArrayObtainStyledAttributes.getFloat(index2, nVar.f31668a);
                        break;
                    case 61:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31652z = e(typedArrayObtainStyledAttributes, index2, kVar.f31652z);
                        break;
                    case 62:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31586A = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, kVar.f31586A);
                        break;
                    case 63:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        kVar.f31587B = typedArrayObtainStyledAttributes.getFloat(index2, kVar.f31587B);
                        break;
                    case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        lVar.f31654a = e(typedArrayObtainStyledAttributes, index2, lVar.f31654a);
                        break;
                    case 65:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        sparseIntArray = sparseIntArray2;
                        if (typedArrayObtainStyledAttributes.peekValue(index2).type != 3) {
                            String str7 = strArr[typedArrayObtainStyledAttributes.getInteger(index2, 0)];
                            lVar.getClass();
                        } else {
                            typedArrayObtainStyledAttributes.getString(index2);
                            lVar.getClass();
                        }
                        break;
                    case 66:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        typedArrayObtainStyledAttributes.getInt(index2, 0);
                        lVar.getClass();
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 67:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        lVar.f31658e = typedArrayObtainStyledAttributes.getFloat(index2, lVar.f31658e);
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 68:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        mVar.f31666d = typedArrayObtainStyledAttributes.getFloat(index2, mVar.f31666d);
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 69:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        kVar.f31619d0 = typedArrayObtainStyledAttributes.getFloat(index2, 1.0f);
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 70:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        kVar.f31621e0 = typedArrayObtainStyledAttributes.getFloat(index2, 1.0f);
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 71:
                        i8 = indexCount2;
                        str = str5;
                        str2 = str6;
                        Log.e("ConstraintSet", str);
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 72:
                        i8 = indexCount2;
                        str2 = str6;
                        kVar.f31623f0 = typedArrayObtainStyledAttributes.getInt(index2, kVar.f31623f0);
                        str = str5;
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 73:
                        i8 = indexCount2;
                        str2 = str6;
                        kVar.f31625g0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, kVar.f31625g0);
                        str = str5;
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 74:
                        i8 = indexCount2;
                        str2 = str6;
                        kVar.f31631j0 = typedArrayObtainStyledAttributes.getString(index2);
                        str = str5;
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 75:
                        i8 = indexCount2;
                        str2 = str6;
                        kVar.f31639n0 = typedArrayObtainStyledAttributes.getBoolean(index2, kVar.f31639n0);
                        str = str5;
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 76:
                        i8 = indexCount2;
                        str2 = str6;
                        lVar.f31656c = typedArrayObtainStyledAttributes.getInt(index2, lVar.f31656c);
                        str = str5;
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 77:
                        i8 = indexCount2;
                        str2 = str6;
                        kVar.f31633k0 = typedArrayObtainStyledAttributes.getString(index2);
                        str = str5;
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 78:
                        i8 = indexCount2;
                        str2 = str6;
                        mVar.f31664b = typedArrayObtainStyledAttributes.getInt(index2, mVar.f31664b);
                        str = str5;
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 79:
                        i8 = indexCount2;
                        str2 = str6;
                        lVar.f31657d = typedArrayObtainStyledAttributes.getFloat(index2, lVar.f31657d);
                        str = str5;
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 80:
                        i8 = indexCount2;
                        str2 = str6;
                        kVar.f31635l0 = typedArrayObtainStyledAttributes.getBoolean(index2, kVar.f31635l0);
                        str = str5;
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 81:
                        i8 = indexCount2;
                        str2 = str6;
                        kVar.f31637m0 = typedArrayObtainStyledAttributes.getBoolean(index2, kVar.f31637m0);
                        str = str5;
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 82:
                        i8 = indexCount2;
                        str2 = str6;
                        lVar.f31655b = typedArrayObtainStyledAttributes.getInteger(index2, lVar.f31655b);
                        str = str5;
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 83:
                        i8 = indexCount2;
                        str2 = str6;
                        nVar.f31675h = e(typedArrayObtainStyledAttributes, index2, nVar.f31675h);
                        str = str5;
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 84:
                        i8 = indexCount2;
                        str2 = str6;
                        lVar.f31660g = typedArrayObtainStyledAttributes.getInteger(index2, lVar.f31660g);
                        str = str5;
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 85:
                        i8 = indexCount2;
                        str2 = str6;
                        lVar.f31659f = typedArrayObtainStyledAttributes.getFloat(index2, lVar.f31659f);
                        str = str5;
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 86:
                        i8 = indexCount2;
                        str2 = str6;
                        int i14 = typedArrayObtainStyledAttributes.peekValue(index2).type;
                        if (i14 == 1) {
                            lVar.f31662i = typedArrayObtainStyledAttributes.getResourceId(index2, -1);
                        } else if (i14 == 3) {
                            String string2 = typedArrayObtainStyledAttributes.getString(index2);
                            lVar.f31661h = string2;
                            if (string2.indexOf(MqttTopic.TOPIC_LEVEL_SEPARATOR) > 0) {
                                lVar.f31662i = typedArrayObtainStyledAttributes.getResourceId(index2, -1);
                            }
                        } else {
                            typedArrayObtainStyledAttributes.getInteger(index2, lVar.f31662i);
                        }
                        str = str5;
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 87:
                        i8 = indexCount2;
                        str2 = str6;
                        Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index2) + "   " + sparseIntArray2.get(index2));
                        str = str5;
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 88:
                    case 89:
                    case 90:
                    default:
                        str2 = str6;
                        StringBuilder sb2 = new StringBuilder(str2);
                        i8 = indexCount2;
                        sb2.append(Integer.toHexString(index2));
                        sb2.append("   ");
                        sb2.append(sparseIntArray2.get(index2));
                        Log.w("ConstraintSet", sb2.toString());
                        str = str5;
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 91:
                        i8 = indexCount2;
                        str2 = str6;
                        kVar.f31643q = e(typedArrayObtainStyledAttributes, index2, kVar.f31643q);
                        str = str5;
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 92:
                        i8 = indexCount2;
                        str2 = str6;
                        kVar.f31644r = e(typedArrayObtainStyledAttributes, index2, kVar.f31644r);
                        str = str5;
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 93:
                        i8 = indexCount2;
                        str2 = str6;
                        kVar.f31597L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, kVar.f31597L);
                        str = str5;
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 94:
                        i8 = indexCount2;
                        str2 = str6;
                        kVar.f31604S = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, kVar.f31604S);
                        str = str5;
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 95:
                        i8 = indexCount2;
                        str2 = str6;
                        f(kVar, typedArrayObtainStyledAttributes, index2, 0);
                        str = str5;
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 96:
                        i8 = indexCount2;
                        str2 = str6;
                        f(kVar, typedArrayObtainStyledAttributes, index2, 1);
                        str = str5;
                        sparseIntArray = sparseIntArray2;
                        break;
                    case 97:
                        i8 = indexCount2;
                        str2 = str6;
                        kVar.f31641o0 = typedArrayObtainStyledAttributes.getInt(index2, kVar.f31641o0);
                        str = str5;
                        sparseIntArray = sparseIntArray2;
                        break;
                }
                i13++;
                indexCount2 = i8;
                str6 = str2;
                sparseIntArray2 = sparseIntArray;
                str5 = str;
            }
            if (kVar.f31631j0 != null) {
                kVar.f31629i0 = null;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        return jVar;
    }

    public static int e(TypedArray typedArray, int i8, int i9) {
        int resourceId = typedArray.getResourceId(i8, i9);
        return resourceId == -1 ? typedArray.getInt(i8, -1) : resourceId;
    }

    /* JADX WARN: Code duplicated, block: B:111:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:20:0x0034  */
    /* JADX WARN: Code duplicated, block: B:22:0x0038  */
    /* JADX WARN: Code duplicated, block: B:23:0x003d  */
    /* JADX WARN: Code duplicated, block: B:24:0x0042  */
    /* JADX WARN: Code duplicated, block: B:26:0x0046  */
    /* JADX WARN: Code duplicated, block: B:28:0x004a  */
    /* JADX WARN: Code duplicated, block: B:29:0x004f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0054  */
    /* JADX WARN: Code duplicated, block: B:32:0x0058  */
    /* JADX WARN: Code duplicated, block: B:34:0x005c  */
    /* JADX WARN: Code duplicated, block: B:35:0x0065  */
    public static void f(Object obj, TypedArray typedArray, int i8, int i9) {
        int dimensionPixelSize;
        i iVar;
        k kVar;
        e eVar;
        if (obj == null) {
            return;
        }
        int i10 = typedArray.peekValue(i8).type;
        boolean z7 = true;
        int i11 = 0;
        if (i10 != 3) {
            if (i10 != 5) {
                dimensionPixelSize = typedArray.getInt(i8, 0);
                if (dimensionPixelSize != -4) {
                    if (dimensionPixelSize != -3 && (dimensionPixelSize == -2 || dimensionPixelSize == -1)) {
                    }
                    z7 = false;
                } else {
                    i11 = -2;
                }
                if (obj instanceof e) {
                    eVar = (e) obj;
                    if (i9 == 0) {
                        ((ViewGroup.MarginLayoutParams) eVar).width = i11;
                        eVar.f31502W = z7;
                        return;
                    } else {
                        ((ViewGroup.MarginLayoutParams) eVar).height = i11;
                        eVar.f31503X = z7;
                        return;
                    }
                }
                if (obj instanceof k) {
                    kVar = (k) obj;
                    if (i9 == 0) {
                        kVar.f31614b = i11;
                        kVar.f31635l0 = z7;
                        return;
                    } else {
                        kVar.f31616c = i11;
                        kVar.f31637m0 = z7;
                        return;
                    }
                }
                if (obj instanceof i) {
                    iVar = (i) obj;
                    if (i9 == 0) {
                        iVar.b(23, i11);
                        iVar.d(80, z7);
                        return;
                    } else {
                        iVar.b(21, i11);
                        iVar.d(81, z7);
                        return;
                    }
                }
                return;
            }
            dimensionPixelSize = typedArray.getDimensionPixelSize(i8, 0);
            i11 = dimensionPixelSize;
            z7 = false;
            if (obj instanceof e) {
                eVar = (e) obj;
                if (i9 == 0) {
                    ((ViewGroup.MarginLayoutParams) eVar).width = i11;
                    eVar.f31502W = z7;
                    return;
                } else {
                    ((ViewGroup.MarginLayoutParams) eVar).height = i11;
                    eVar.f31503X = z7;
                    return;
                }
            }
            if (obj instanceof k) {
                kVar = (k) obj;
                if (i9 == 0) {
                    kVar.f31614b = i11;
                    kVar.f31635l0 = z7;
                    return;
                } else {
                    kVar.f31616c = i11;
                    kVar.f31637m0 = z7;
                    return;
                }
            }
            if (obj instanceof i) {
                iVar = (i) obj;
                if (i9 == 0) {
                    iVar.b(23, i11);
                    iVar.d(80, z7);
                    return;
                } else {
                    iVar.b(21, i11);
                    iVar.d(81, z7);
                    return;
                }
            }
            return;
        }
        String string = typedArray.getString(i8);
        if (string == null) {
            return;
        }
        int iIndexOf = string.indexOf(61);
        int length = string.length();
        if (iIndexOf <= 0 || iIndexOf >= length - 1) {
            return;
        }
        String strSubstring = string.substring(0, iIndexOf);
        String strSubstring2 = string.substring(iIndexOf + 1);
        if (strSubstring2.length() > 0) {
            String strTrim = strSubstring.trim();
            String strTrim2 = strSubstring2.trim();
            if ("ratio".equalsIgnoreCase(strTrim)) {
                if (obj instanceof e) {
                    e eVar2 = (e) obj;
                    if (i9 == 0) {
                        ((ViewGroup.MarginLayoutParams) eVar2).width = 0;
                    } else {
                        ((ViewGroup.MarginLayoutParams) eVar2).height = 0;
                    }
                    g(eVar2, strTrim2);
                    return;
                }
                if (obj instanceof k) {
                    ((k) obj).f31651y = strTrim2;
                    return;
                } else {
                    if (obj instanceof i) {
                        ((i) obj).c(5, strTrim2);
                        return;
                    }
                    return;
                }
            }
            try {
                if ("weight".equalsIgnoreCase(strTrim)) {
                    float f8 = Float.parseFloat(strTrim2);
                    if (obj instanceof e) {
                        e eVar3 = (e) obj;
                        if (i9 == 0) {
                            ((ViewGroup.MarginLayoutParams) eVar3).width = 0;
                            eVar3.f31487H = f8;
                        } else {
                            ((ViewGroup.MarginLayoutParams) eVar3).height = 0;
                            eVar3.f31488I = f8;
                        }
                    } else if (obj instanceof k) {
                        k kVar2 = (k) obj;
                        if (i9 == 0) {
                            kVar2.f31614b = 0;
                            kVar2.f31606U = f8;
                        } else {
                            kVar2.f31616c = 0;
                            kVar2.f31605T = f8;
                        }
                    } else if (obj instanceof i) {
                        i iVar2 = (i) obj;
                        if (i9 == 0) {
                            iVar2.b(23, 0);
                            iVar2.a(39, f8);
                        } else {
                            iVar2.b(21, 0);
                            iVar2.a(40, f8);
                        }
                    }
                } else {
                    if (!"parent".equalsIgnoreCase(strTrim)) {
                        return;
                    }
                    float fMax = Math.max(0.0f, Math.min(1.0f, Float.parseFloat(strTrim2)));
                    if (obj instanceof e) {
                        e eVar4 = (e) obj;
                        if (i9 == 0) {
                            ((ViewGroup.MarginLayoutParams) eVar4).width = 0;
                            eVar4.f31497R = fMax;
                            eVar4.f31491L = 2;
                        } else {
                            ((ViewGroup.MarginLayoutParams) eVar4).height = 0;
                            eVar4.f31498S = fMax;
                            eVar4.f31492M = 2;
                        }
                    } else if (obj instanceof k) {
                        k kVar3 = (k) obj;
                        if (i9 == 0) {
                            kVar3.f31614b = 0;
                            kVar3.f31619d0 = fMax;
                            kVar3.f31609X = 2;
                        } else {
                            kVar3.f31616c = 0;
                            kVar3.f31621e0 = fMax;
                            kVar3.f31610Y = 2;
                        }
                    } else if (obj instanceof i) {
                        i iVar3 = (i) obj;
                        if (i9 == 0) {
                            iVar3.b(23, 0);
                            iVar3.b(54, 2);
                        } else {
                            iVar3.b(21, 0);
                            iVar3.b(55, 2);
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    public static void g(e eVar, String str) {
        if (str != null) {
            int length = str.length();
            int iIndexOf = str.indexOf(44);
            byte b8 = -1;
            int i8 = 0;
            if (iIndexOf > 0 && iIndexOf < length - 1) {
                String strSubstring = str.substring(0, iIndexOf);
                if (strSubstring.equalsIgnoreCase("W")) {
                    b8 = 0;
                } else if (strSubstring.equalsIgnoreCase("H")) {
                    b8 = 1;
                }
                i8 = iIndexOf + 1;
            }
            int iIndexOf2 = str.indexOf(58);
            try {
                if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                    String strSubstring2 = str.substring(i8);
                    if (strSubstring2.length() > 0) {
                        Float.parseFloat(strSubstring2);
                    }
                } else {
                    String strSubstring3 = str.substring(i8, iIndexOf2);
                    String strSubstring4 = str.substring(iIndexOf2 + 1);
                    if (strSubstring3.length() > 0 && strSubstring4.length() > 0) {
                        float f8 = Float.parseFloat(strSubstring3);
                        float f9 = Float.parseFloat(strSubstring4);
                        if (f8 > 0.0f && f9 > 0.0f) {
                            if (b8 == 1) {
                                Math.abs(f9 / f8);
                            } else {
                                Math.abs(f8 / f9);
                            }
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
        eVar.f31486G = str;
    }

    public final void a(Context context, int i8) {
        ConstraintLayout constraintLayout;
        int i9;
        HashMap map;
        int i10;
        HashMap map2;
        o oVar = this;
        ConstraintLayout constraintLayout2 = (ConstraintLayout) LayoutInflater.from(context).inflate(i8, (ViewGroup) null);
        int childCount = constraintLayout2.getChildCount();
        HashMap map3 = oVar.f31686c;
        map3.clear();
        int i11 = 0;
        while (i11 < childCount) {
            View childAt = constraintLayout2.getChildAt(i11);
            e eVar = (e) childAt.getLayoutParams();
            int id = childAt.getId();
            if (oVar.f31685b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!map3.containsKey(Integer.valueOf(id))) {
                map3.put(Integer.valueOf(id), new j());
            }
            j jVar = (j) map3.get(Integer.valueOf(id));
            if (jVar == null) {
                constraintLayout = constraintLayout2;
                i9 = childCount;
                map = map3;
            } else {
                HashMap map4 = oVar.f31684a;
                HashMap map5 = new HashMap();
                Class<?> cls = childAt.getClass();
                for (String str : map4.keySet()) {
                    b bVar = (b) map4.get(str);
                    ConstraintLayout constraintLayout3 = constraintLayout2;
                    try {
                        if (str.equals("BackgroundColor")) {
                            i10 = childCount;
                            try {
                                map5.put(str, new b(bVar, Integer.valueOf(((ColorDrawable) childAt.getBackground()).getColor())));
                                map2 = map3;
                            } catch (IllegalAccessException e8) {
                                e = e8;
                                map2 = map3;
                                StringBuilder sbP = U2.p(" Custom Attribute \"", str, "\" not found on ");
                                sbP.append(cls.getName());
                                Log.e("TransitionLayout", sbP.toString(), e);
                            } catch (NoSuchMethodException e9) {
                                e = e9;
                                map2 = map3;
                                Log.e("TransitionLayout", cls.getName() + " must have a method " + str, e);
                            } catch (InvocationTargetException e10) {
                                e = e10;
                                map2 = map3;
                                StringBuilder sbP2 = U2.p(" Custom Attribute \"", str, "\" not found on ");
                                sbP2.append(cls.getName());
                                Log.e("TransitionLayout", sbP2.toString(), e);
                            }
                        } else {
                            i10 = childCount;
                            map2 = map3;
                            try {
                                map5.put(str, new b(bVar, cls.getMethod("getMap" + str, new Class[0]).invoke(childAt, new Object[0])));
                            } catch (IllegalAccessException e11) {
                                e = e11;
                                StringBuilder sbP3 = U2.p(" Custom Attribute \"", str, "\" not found on ");
                                sbP3.append(cls.getName());
                                Log.e("TransitionLayout", sbP3.toString(), e);
                            } catch (NoSuchMethodException e12) {
                                e = e12;
                                Log.e("TransitionLayout", cls.getName() + " must have a method " + str, e);
                            } catch (InvocationTargetException e13) {
                                e = e13;
                                StringBuilder sbP4 = U2.p(" Custom Attribute \"", str, "\" not found on ");
                                sbP4.append(cls.getName());
                                Log.e("TransitionLayout", sbP4.toString(), e);
                            }
                        }
                    } catch (IllegalAccessException e14) {
                        e = e14;
                        i10 = childCount;
                    } catch (NoSuchMethodException e15) {
                        e = e15;
                        i10 = childCount;
                    } catch (InvocationTargetException e16) {
                        e = e16;
                        i10 = childCount;
                    }
                    map3 = map2;
                    constraintLayout2 = constraintLayout3;
                    childCount = i10;
                }
                constraintLayout = constraintLayout2;
                i9 = childCount;
                map = map3;
                jVar.f31584f = map5;
                jVar.f31579a = id;
                int i12 = eVar.f31514e;
                k kVar = jVar.f31582d;
                kVar.f31626h = i12;
                kVar.f31628i = eVar.f31516f;
                kVar.f31630j = eVar.f31518g;
                kVar.f31632k = eVar.f31520h;
                kVar.f31634l = eVar.f31522i;
                kVar.f31636m = eVar.f31524j;
                kVar.f31638n = eVar.f31526k;
                kVar.f31640o = eVar.f31528l;
                kVar.f31642p = eVar.f31530m;
                kVar.f31643q = eVar.f31532n;
                kVar.f31644r = eVar.f31534o;
                kVar.f31645s = eVar.f31540s;
                kVar.f31646t = eVar.f31541t;
                kVar.f31647u = eVar.f31542u;
                kVar.f31648v = eVar.f31543v;
                kVar.f31649w = eVar.f31484E;
                kVar.f31650x = eVar.f31485F;
                kVar.f31651y = eVar.f31486G;
                kVar.f31652z = eVar.f31536p;
                kVar.f31586A = eVar.f31538q;
                kVar.f31587B = eVar.f31539r;
                kVar.f31588C = eVar.f31499T;
                kVar.f31589D = eVar.f31500U;
                kVar.f31590E = eVar.f31501V;
                kVar.f31622f = eVar.f31510c;
                kVar.f31618d = eVar.f31506a;
                kVar.f31620e = eVar.f31508b;
                kVar.f31614b = ((ViewGroup.MarginLayoutParams) eVar).width;
                kVar.f31616c = ((ViewGroup.MarginLayoutParams) eVar).height;
                kVar.f31591F = ((ViewGroup.MarginLayoutParams) eVar).leftMargin;
                kVar.f31592G = ((ViewGroup.MarginLayoutParams) eVar).rightMargin;
                kVar.f31593H = ((ViewGroup.MarginLayoutParams) eVar).topMargin;
                kVar.f31594I = ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
                kVar.f31597L = eVar.f31483D;
                kVar.f31605T = eVar.f31488I;
                kVar.f31606U = eVar.f31487H;
                kVar.f31608W = eVar.f31490K;
                kVar.f31607V = eVar.f31489J;
                kVar.f31635l0 = eVar.f31502W;
                kVar.f31637m0 = eVar.f31503X;
                kVar.f31609X = eVar.f31491L;
                kVar.f31610Y = eVar.f31492M;
                kVar.f31611Z = eVar.f31495P;
                kVar.f31613a0 = eVar.f31496Q;
                kVar.f31615b0 = eVar.f31493N;
                kVar.f31617c0 = eVar.f31494O;
                kVar.f31619d0 = eVar.f31497R;
                kVar.f31621e0 = eVar.f31498S;
                kVar.f31633k0 = eVar.f31504Y;
                kVar.f31599N = eVar.f31545x;
                kVar.f31601P = eVar.f31547z;
                kVar.f31598M = eVar.f31544w;
                kVar.f31600O = eVar.f31546y;
                kVar.f31603R = eVar.f31480A;
                kVar.f31602Q = eVar.f31481B;
                kVar.f31604S = eVar.f31482C;
                kVar.f31641o0 = eVar.f31505Z;
                kVar.f31595J = eVar.getMarginEnd();
                kVar.f31596K = eVar.getMarginStart();
                int visibility = childAt.getVisibility();
                m mVar = jVar.f31580b;
                mVar.f31663a = visibility;
                mVar.f31665c = childAt.getAlpha();
                float rotation = childAt.getRotation();
                n nVar = jVar.f31583e;
                nVar.f31668a = rotation;
                nVar.f31669b = childAt.getRotationX();
                nVar.f31670c = childAt.getRotationY();
                nVar.f31671d = childAt.getScaleX();
                nVar.f31672e = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    nVar.f31673f = pivotX;
                    nVar.f31674g = pivotY;
                }
                nVar.f31676i = childAt.getTranslationX();
                nVar.f31677j = childAt.getTranslationY();
                nVar.f31678k = childAt.getTranslationZ();
                if (nVar.f31679l) {
                    nVar.f31680m = childAt.getElevation();
                }
                if (childAt instanceof a) {
                    a aVar = (a) childAt;
                    kVar.f31639n0 = aVar.getAllowsGoneWidget();
                    kVar.f31629i0 = aVar.getReferencedIds();
                    kVar.f31623f0 = aVar.getType();
                    kVar.f31625g0 = aVar.getMargin();
                }
            }
            i11++;
            oVar = this;
            map3 = map;
            constraintLayout2 = constraintLayout;
            childCount = i9;
        }
    }

    public final void d(Context context, int i8) {
        XmlResourceParser xml = context.getResources().getXml(i8);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 2) {
                    String name = xml.getName();
                    j jVarC = c(context, Xml.asAttributeSet(xml), false);
                    if (name.equalsIgnoreCase("Guideline")) {
                        jVarC.f31582d.f31612a = true;
                    }
                    this.f31686c.put(Integer.valueOf(jVarC.f31579a), jVarC);
                }
            }
        } catch (IOException e8) {
            Log.e("ConstraintSet", "Error parsing resource: " + i8, e8);
        } catch (XmlPullParserException e9) {
            Log.e("ConstraintSet", "Error parsing resource: " + i8, e9);
        }
    }
}
