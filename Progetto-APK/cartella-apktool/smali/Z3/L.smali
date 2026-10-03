.class public final LZ3/L;
.super LZ3/I;
.source "SourceFile"


# instance fields
.field public final J:LZ3/N;


# direct methods
.method public constructor <init>(LZ3/N;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0, p2}, LZ3/I;-><init>(II)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, LZ3/L;->J:LZ3/N;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final c(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LZ3/L;->J:LZ3/N;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
