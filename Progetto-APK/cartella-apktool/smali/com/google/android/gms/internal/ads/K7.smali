.class public abstract Lcom/google/android/gms/internal/ads/K7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/K7;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/K7;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/K7;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/K7;->d:Ljava/lang/Object;

    .line 11
    .line 12
    sget-object p1, Ll3/q;->d:Ll3/q;

    .line 13
    .line 14
    iget-object p1, p1, Ll3/q;->a:LF0/u;

    .line 15
    .line 16
    iget-object p1, p1, LF0/u;->a:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static b(Ljava/lang/String;II)Lcom/google/android/gms/internal/ads/J7;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/J7;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static c(Ljava/lang/String;JJ)Lcom/google/android/gms/internal/ads/J7;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const/4 p3, 0x2

    .line 12
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/J7;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static d()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    const-string v1, "gads:sdk_core_constants:experiment_id"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x4

    .line 7
    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/android/gms/internal/ads/J7;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 11
    .line 12
    iget-object v1, v1, Ll3/q;->a:LF0/u;

    .line 13
    .line 14
    iget-object v1, v1, LF0/u;->b:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public abstract a(Lorg/json/JSONObject;)Ljava/lang/Object;
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Ll3/q;->d:Ll3/q;

    .line 2
    .line 3
    iget-object v0, v0, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/O7;->i:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/K7;->d:Ljava/lang/Object;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/K7;->c:Ljava/lang/Object;

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method
