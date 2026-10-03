.class public final Lcom/google/android/gms/internal/pal/t2;
.super Lcom/google/android/gms/common/api/j;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/api/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/f;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, LH3/r;

    .line 7
    .line 8
    const/4 v2, 0x5

    .line 9
    invoke-direct {v1, v2}, LH3/r;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lcom/google/android/gms/common/api/g;

    .line 13
    .line 14
    const-string v3, "SignalSdk.API"

    .line 15
    .line 16
    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/g;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/f;)V

    .line 17
    .line 18
    .line 19
    sput-object v2, Lcom/google/android/gms/internal/pal/t2;->a:Lcom/google/android/gms/common/api/g;

    .line 20
    .line 21
    return-void
.end method
