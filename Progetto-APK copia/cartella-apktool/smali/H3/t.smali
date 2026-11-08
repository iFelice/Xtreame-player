.class public final LH3/t;
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
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v2}, LH3/r;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lcom/google/android/gms/common/api/g;

    .line 13
    .line 14
    const-string v3, "CastApi.API"

    .line 15
    .line 16
    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/g;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/f;)V

    .line 17
    .line 18
    .line 19
    sput-object v2, LH3/t;->a:Lcom/google/android/gms/common/api/g;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final c([Ljava/lang/String;)Lg4/h;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {}, LK3/s;->a()LK3/r;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    new-instance v2, Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 7
    .line 8
    const/16 v3, 0xe

    .line 9
    .line 10
    invoke-direct {v2, v3, p0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/x0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v2, v1, LK3/r;->c:Ljava/lang/Object;

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    new-array p1, p1, [LJ3/d;

    .line 17
    .line 18
    sget-object v2, LC3/y;->b:LJ3/d;

    .line 19
    .line 20
    aput-object v2, p1, v0

    .line 21
    .line 22
    iput-object p1, v1, LK3/r;->d:Ljava/lang/Object;

    .line 23
    .line 24
    iput-boolean v0, v1, LK3/r;->b:Z

    .line 25
    .line 26
    const/16 p1, 0x20e9

    .line 27
    .line 28
    iput p1, v1, LK3/r;->a:I

    .line 29
    .line 30
    invoke-virtual {v1}, LK3/r;->a()LK3/O;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/j;->doRead(LK3/s;)Lg4/h;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method
