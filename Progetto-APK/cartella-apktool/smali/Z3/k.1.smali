.class public final LZ3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv4/d;
.implements Lv4/c;


# instance fields
.field public final G:Lv4/d;

.field public final H:Lv4/c;


# direct methods
.method public synthetic constructor <init>(Lv4/d;Lv4/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LZ3/k;->G:Lv4/d;

    .line 5
    .line 6
    iput-object p2, p0, LZ3/k;->H:Lv4/c;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(LK/k;)V
    .locals 1

    .line 1
    iget-object v0, p0, LZ3/k;->H:Lv4/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lv4/c;->a(LK/k;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final i(LZ3/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, LZ3/k;->G:Lv4/d;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lv4/d;->i(LZ3/l;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
