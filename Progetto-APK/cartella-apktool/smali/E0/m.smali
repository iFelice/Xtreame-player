.class public final LE0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE0/a;


# instance fields
.field public final a:Ls0/h;

.field public final b:I

.field public final c:LP0/g;


# direct methods
.method public constructor <init>(Ls0/h;)V
    .locals 1

    .line 1
    new-instance v0, Ll/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ll/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LE0/m;->c:LP0/g;

    .line 10
    .line 11
    iput-object p1, p0, LE0/m;->a:Ls0/h;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput p1, p0, LE0/m;->b:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(LS0/n;LF0/c;Lm2/i;I[ILR0/t;IJZLjava/util/ArrayList;LE0/s;Ls0/O;LC0/I;)LE0/p;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p13

    .line 4
    .line 5
    iget-object v2, v0, LE0/m;->a:Ls0/h;

    .line 6
    .line 7
    invoke-interface {v2}, Ls0/h;->a()Ls0/i;

    .line 8
    .line 9
    .line 10
    move-result-object v12

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v12, v1}, Ls0/i;->p(Ls0/O;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance v1, LE0/p;

    .line 17
    .line 18
    move-object v3, v1

    .line 19
    iget-object v4, v0, LE0/m;->c:LP0/g;

    .line 20
    .line 21
    iget v15, v0, LE0/m;->b:I

    .line 22
    .line 23
    move-object/from16 v5, p1

    .line 24
    .line 25
    move-object/from16 v6, p2

    .line 26
    .line 27
    move-object/from16 v7, p3

    .line 28
    .line 29
    move/from16 v8, p4

    .line 30
    .line 31
    move-object/from16 v9, p5

    .line 32
    .line 33
    move-object/from16 v10, p6

    .line 34
    .line 35
    move/from16 v11, p7

    .line 36
    .line 37
    move-wide/from16 v13, p8

    .line 38
    .line 39
    move/from16 v16, p10

    .line 40
    .line 41
    move-object/from16 v17, p11

    .line 42
    .line 43
    move-object/from16 v18, p12

    .line 44
    .line 45
    move-object/from16 v19, p14

    .line 46
    .line 47
    invoke-direct/range {v3 .. v19}, LE0/p;-><init>(LP0/g;LS0/n;LF0/c;Lm2/i;I[ILR0/t;ILs0/i;JIZLjava/util/ArrayList;LE0/s;LC0/I;)V

    .line 48
    .line 49
    .line 50
    return-object v1
.end method
