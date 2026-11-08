.class public final LZ3/D;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LZ3/O;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v2, "UMP_CoMoAdStoragePurposeConsentStatus"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 8
    .line 9
    const-string v2, "UMP_CoMoAdUserDataPurposeConsentStatus"

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    aput-object v2, v1, v3

    .line 13
    .line 14
    const-string v2, "UMP_CoMoAdPersonalizationPurposeConsentStatus"

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    aput-object v2, v1, v3

    .line 18
    .line 19
    const-string v2, "UMP_CoMoAnalyticsStoragePurposeConsentStatus"

    .line 20
    .line 21
    const/4 v3, 0x3

    .line 22
    aput-object v2, v1, v3

    .line 23
    .line 24
    const-string v2, "IABTCF_gdprApplies"

    .line 25
    .line 26
    const/4 v3, 0x4

    .line 27
    aput-object v2, v1, v3

    .line 28
    .line 29
    invoke-static {v0, v1}, LZ3/O;->o(I[Ljava/lang/Object;)LZ3/O;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, LZ3/D;->d:LZ3/O;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LZ3/D;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LZ3/D;->c:Ljava/util/HashMap;

    .line 17
    .line 18
    iput-object p1, p0, LZ3/D;->b:Landroid/content/Context;

    .line 19
    .line 20
    return-void
.end method
