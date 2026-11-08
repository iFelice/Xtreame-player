.class public final Lz4/s;
.super Lz4/n;
.source "SourceFile"


# instance fields
.field public final G:Ljava/lang/Object;

.field public H:I


# direct methods
.method public constructor <init>(Lz4/t;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lz4/n;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lz4/t;->G:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p1}, Lz4/t;->c()[Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    aget-object p1, p1, p2

    .line 11
    .line 12
    iput-object p1, p0, Lz4/s;->G:Ljava/lang/Object;

    .line 13
    .line 14
    iput p2, p0, Lz4/s;->H:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget v0, p0, Lz4/s;->H:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    throw v0

    .line 8
    :cond_0
    sget-object v0, Lz4/t;->G:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    throw v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lz4/s;->G:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
