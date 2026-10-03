package p094m0;

import android.util.JsonReader;
import java.io.IOException;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class H {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f26694a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f26695b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f26696c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f26697d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f26698e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f26699f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Object f26700g;

    public static G a(H h8) {
        return new G(h8);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:104:0x01af  */
    /* JADX WARN: Code duplicated, block: B:58:0x0101  */
    /* JADX WARN: Code duplicated, block: B:7:0x0034  */
    /* JADX WARN: Code duplicated, block: B:82:0x0159  */
    public static H b(JsonReader jsonReader) throws IOException {
        int i8;
        H h8 = new H();
        h8.f26697d = 1;
        h8.f26699f = Collections.emptyList();
        h8.f26700g = Collections.emptyList();
        h8.f26698e = 1;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            int i9 = 3;
            switch (strNextName) {
                case "consent_signal":
                    String strNextString = jsonReader.nextString();
                    strNextString.getClass();
                    switch (strNextString) {
                        case "CONSENT_SIGNAL_COLLECT_CONSENT":
                            i9 = 5;
                            h8.f26697d = i9;
                            break;
                        case "CONSENT_SIGNAL_ERROR":
                            i9 = 7;
                            h8.f26697d = i9;
                            break;
                        case "CONSENT_SIGNAL_UNKNOWN":
                            i9 = 1;
                            h8.f26697d = i9;
                            break;
                        case "CONSENT_SIGNAL_NON_PERSONALIZED_ADS":
                            h8.f26697d = i9;
                            break;
                        case "CONSENT_SIGNAL_PUBLISHER_MISCONFIGURATION":
                            i9 = 8;
                            h8.f26697d = i9;
                            break;
                        case "CONSENT_SIGNAL_SUFFICIENT":
                            i9 = 4;
                            h8.f26697d = i9;
                            break;
                        case "CONSENT_SIGNAL_PERSONALIZED_ADS":
                            i9 = 2;
                            h8.f26697d = i9;
                            break;
                        case "CONSENT_SIGNAL_NOT_REQUIRED":
                            i9 = 6;
                            h8.f26697d = i9;
                            break;
                        default:
                            throw new IOException("Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.ConsentSignalfrom: ".concat(strNextString));
                    }
                    break;
                case "error_message":
                    h8.f26696c = jsonReader.nextString();
                    break;
                case "consent_form_base_url":
                    h8.f26695b = jsonReader.nextString();
                    break;
                case "privacy_options_required":
                    String strNextString2 = jsonReader.nextString();
                    strNextString2.getClass();
                    switch (strNextString2.hashCode()) {
                        case -1888946261:
                            if (!strNextString2.equals("NOT_REQUIRED")) {
                            }
                            break;
                        case 389487519:
                            if (!strNextString2.equals("REQUIRED")) {
                            }
                            break;
                        case 433141802:
                            if (!strNextString2.equals("UNKNOWN")) {
                            }
                            break;
                        default:
                            break;
                    }
                    /*  JADX ERROR: Method code generation error
                        java.lang.NullPointerException: Switch insn not found in header
                        	at java.base/java.util.Objects.requireNonNull(Objects.java:246)
                        	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:246)
                        	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                        	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:267)
                        	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                        	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:226)
                        	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                        	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:299)
                        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:186)
                        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1612)
                        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                        	at java.base/java.util.stream.ReferencePipeline$7$1FlatMap.end(ReferencePipeline.java:284)
                        	at java.base/java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:571)
                        	at java.base/java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:560)
                        	at java.base/java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:153)
                        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:176)
                        	at java.base/java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:265)
                        	at java.base/java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:632)
                        	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:295)
                        	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:284)
                        	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:268)
                        	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:160)
                        	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:104)
                        	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:45)
                        	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:34)
                        	at jadx.core.codegen.CodeGen.generate(CodeGen.java:22)
                        	at jadx.core.ProcessClass.process(ProcessClass.java:89)
                        	at jadx.core.ProcessClass.generateCode(ProcessClass.java:127)
                        	at jadx.core.dex.nodes.ClassNode.generateClassCode(ClassNode.java:405)
                        	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:393)
                        	at jadx.core.dex.nodes.ClassNode.getCode(ClassNode.java:343)
                        */
                    /*
                        Method dump skipped, instruction units count: 706
                        To view this dump change 'Code comments level' option to 'DEBUG'
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p094m0.H.b(android.util.JsonReader):m0.H");
                }
            }
