.class public final LN3/b;
.super Lcom/google/android/gms/common/api/j;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/u;


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
    const/4 v2, 0x3

    .line 9
    invoke-direct {v1, v2}, LH3/r;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lcom/google/android/gms/common/api/g;

    .line 13
    .line 14
    const-string v3, "ClientTelemetry.API"

    .line 15
    .line 16
    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/g;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/f;)V

    .line 17
    .line 18
    .line 19
    sput-object v2, LN3/b;->a:Lcom/google/android/gms/common/api/g;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/common/internal/t;)Lg4/h;
    .locals 4

    .line 1
    invoke-static {}, LK3/s;->a()LK3/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [LJ3/d;

    .line 7
    .line 8
    sget-object v2, LX3/b;->a:LJ3/d;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 12
    .line 13
    iput-object v1, v0, LK3/r;->d:Ljava/lang/Object;

    .line 14
    .line 15
    iput-boolean v3, v0, LK3/r;->b:Z

    .line 16
    .line 17
    new-instance v1, LC2/g;

    .line 18
    .line 19
    const/16 v2, 0x16

    .line 20
    .line 21
    invoke-direct {v1, p1, v2}, LC2/g;-><init>(Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, LK3/r;->c:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-virtual {v0}, LK3/r;->a()LK3/O;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/j;->doBestEffortWrite(LK3/s;)Lg4/h;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method
