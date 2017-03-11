// Copyright (c) 2011-2014 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef LUCKYBLOCKCOIN_QT_LUCKYBLOCKCOINADDRESSVALIDATOR_H
#define LUCKYBLOCKCOIN_QT_LUCKYBLOCKCOINADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class LuckyblockcoinAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit LuckyblockcoinAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** Luckyblockcoin address widget validator, checks for a valid luckyblockcoin address.
 */
class LuckyblockcoinAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit LuckyblockcoinAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // LUCKYBLOCKCOIN_QT_LUCKYBLOCKCOINADDRESSVALIDATOR_H
