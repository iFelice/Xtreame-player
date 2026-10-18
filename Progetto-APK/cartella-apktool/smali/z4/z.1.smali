.class public final Lz4/z;
.super Lz4/a;
.source "SourceFile"


# instance fields
.field public final synthetic J:LD/z;


# direct methods
.method public constructor <init>(LD/z;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz4/z;->J:LD/z;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p2, p1}, Lz4/a;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final b(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lz4/z;->J:LD/z;

    .line 2
    .line 3
    iget-object v0, v0, LD/z;->I:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, [Ljava/lang/Iterable;

    .line 6
    .line 7
    aget-object p1, v0, p1

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
