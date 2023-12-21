.class Lmoe/artemis/gui/Dialog$4;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmoe/artemis/gui/Dialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmoe/artemis/gui/Dialog;


# direct methods
.method constructor <init>(Lmoe/artemis/gui/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lmoe/artemis/gui/Dialog$4;->this$0:Lmoe/artemis/gui/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 61
    iget-object v0, p0, Lmoe/artemis/gui/Dialog$4;->this$0:Lmoe/artemis/gui/Dialog;

    invoke-static {v0}, Lmoe/artemis/gui/Dialog;->access$300(Lmoe/artemis/gui/Dialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lmoe/artemis/gui/Dialog$4;->this$0:Lmoe/artemis/gui/Dialog;

    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lmoe/artemis/gui/Dialog$4;->this$0:Lmoe/artemis/gui/Dialog;

    invoke-static {v2}, Lmoe/artemis/gui/Dialog;->access$400(Lmoe/artemis/gui/Dialog;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lmoe/artemis/gui/Dialog;->access$202(Lmoe/artemis/gui/Dialog;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 65
    iget-object v0, p0, Lmoe/artemis/gui/Dialog$4;->this$0:Lmoe/artemis/gui/Dialog;

    invoke-static {v0}, Lmoe/artemis/gui/Dialog;->access$200(Lmoe/artemis/gui/Dialog;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 66
    iget-object v0, p0, Lmoe/artemis/gui/Dialog$4;->this$0:Lmoe/artemis/gui/Dialog;

    invoke-static {v0}, Lmoe/artemis/gui/Dialog;->access$200(Lmoe/artemis/gui/Dialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lmoe/artemis/gui/Dialog$4;->this$0:Lmoe/artemis/gui/Dialog;

    invoke-static {v1}, Lmoe/artemis/gui/Dialog;->access$500(Lmoe/artemis/gui/Dialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lmoe/artemis/gui/Dialog$4;->this$0:Lmoe/artemis/gui/Dialog;

    invoke-static {v0}, Lmoe/artemis/gui/Dialog;->access$200(Lmoe/artemis/gui/Dialog;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 69
    iget-object v0, p0, Lmoe/artemis/gui/Dialog$4;->this$0:Lmoe/artemis/gui/Dialog;

    invoke-static {v0}, Lmoe/artemis/gui/Dialog;->access$600(Lmoe/artemis/gui/Dialog;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lmoe/artemis/gui/Dialog$4;->this$0:Lmoe/artemis/gui/Dialog;

    invoke-static {v1}, Lmoe/artemis/gui/Dialog;->access$200(Lmoe/artemis/gui/Dialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 71
    :cond_0
    iget-object v0, p0, Lmoe/artemis/gui/Dialog$4;->this$0:Lmoe/artemis/gui/Dialog;

    invoke-static {v0}, Lmoe/artemis/gui/Dialog;->access$600(Lmoe/artemis/gui/Dialog;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
