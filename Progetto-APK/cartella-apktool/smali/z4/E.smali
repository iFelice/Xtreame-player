.class public final Lz4/E;
.super Lz4/B;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Lz4/B;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)LQ3/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final m0()Lz4/d0;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lz4/B;->e:Z

    .line 3
    .line 4
    iget-object v0, p0, Lz4/B;->c:[Ljava/lang/Object;

    .line 5
    .line 6
    iget v1, p0, Lz4/B;->d:I

    .line 7
    .line 8
    invoke-static {v1, v0}, Lz4/H;->p(I[Ljava/lang/Object;)Lz4/d0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method
